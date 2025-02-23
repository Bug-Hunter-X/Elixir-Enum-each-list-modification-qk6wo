```elixir
list = [1, 2, 3, 4, 5]

#Solution 1:  Using List.delete to create a new list
new_list = Enum.reject(list, fn x -> x == 3 end)
IO.inspect(new_list) # Output: [1, 2, 4, 5]

#Solution 2: Using Enum.filter to create a new list without the element
filtered_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(filtered_list) # Output: [1, 2, 4, 5]

#Solution 3: For in-place modification (less common, generally not preferred in functional programming):
list = Enum.reduce(list, [], fn x, acc -> if x != 3, do: [x | acc], else: acc end)
list = Enum.reverse(list) # Reverses to maintain original order
IO.inspect(list) #Output: [1,2,4,5]
```