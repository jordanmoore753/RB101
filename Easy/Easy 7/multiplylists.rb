def multiply_list(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |value, idx|
    new_arr << value * arr2[idx]
  end
  new_arr
end

multiply_list([3, 5, 7], [9, 10, 11])