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

calculate_spaces(integer, count)
=end

DEGREE = "\xC2\xB0"
DEGREE_IN_MINUTES = 60
MINUTES_IN_SECONDS = 60
DEGREES_IN_SECONDS = DEGREE_IN_MINUTES * MINUTES_IN_SECONDS

def dms(input_seconds)
  total_seconds = input_seconds * DEGREES_IN_SECONDS
  degrees, remaining_seconds = total_seconds.divmod(DEGREES_IN_SECONDS)
  minutes, seconds = remaining_seconds.divmod(MINUTES_IN_SECONDS)
  p minutes
  "#{format('%02d', degrees)}*#{format('%02d', minutes)}'#{format('%02d', seconds)}"
end

p dms(76.73)

x = ['1', '2', '3', '4', '5']
for item in x  
  puts item << 'b'
end

p x