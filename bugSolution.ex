```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, 0, fn x, acc ->
  case x do
    x when is_number(x) and x > 3 -> acc + x
    _ -> acc
  end
end)
IO.puts result 

#Handling empty list
empty_list = []
result_empty = Enum.reduce(empty_list, 0, fn x, acc ->
  case x do
    x when is_number(x) and x > 3 -> acc + x
    _ -> acc
  end
end)
IO.puts result_empty

#Handling list with non-numeric values
list_with_non_numeric = [1,2,a,4,5]
result_non_numeric = Enum.reduce(list_with_non_numeric, 0, fn x, acc ->
  case x do
    x when is_number(x) and x > 3 -> acc + x
    _ -> acc
  end
end)
IO.puts result_non_numeric
```