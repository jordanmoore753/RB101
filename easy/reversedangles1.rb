=begin 

input = a method that takes array as argument

output = reversed array elements in the same array 
passed into the method, same object id!

ex: list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

=end

def reverse!(arr)
  left_index = 0
  right_index = -1

  while left_index < arr.size / 2
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
    left_index += 1
    right_index -= 1
  end
  arr
end

list = %w(a b e d c)
result = reverse!(list)
p list.object_id, result.object_id
p list, result


