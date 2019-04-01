=begin 

input = a parameter of an array with several elements

output = return the original array but with
the first element shifted to the end of the array

quals = orig array cannot be modified

ex =

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]  

so, I can't use anything that creates 
or modifies the original array object. But I can
re-assign the elements by index number, as that doesn't
modify the object.

=end

def rotate_rightmost_digits(number, int)
  array = number.digits.reverse
  (array[0...(-int)] + [rotate_array(array[(-int)..-1])]).flatten.join().to_i
end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_rightmost_digits(735291, 6)  




