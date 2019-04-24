def multiply_all_pairs(arr1, arr2)
  new_array = []
  arr1.map do |value|
    arr2.each do |v|
      new_array << value * v 
    end
  end
  new_array.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2])