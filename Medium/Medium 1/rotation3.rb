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

def max_rotation(integer)
  integer_size = -(integer.digits.size)
  
  integer_size.upto(-1) do |counter|
    integer = rotate_rightmost_digits(integer, counter)
  end
  integer
end

def rotate_rightmost_digits(number, int)
 all_digits = number.to_s.chars
 all_digits[int..-1] = rotate_array(all_digits[int..-1])
 all_digits.join.to_i
end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845




