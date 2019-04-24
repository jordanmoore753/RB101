=begin 

input = array argument passed into method

output = a string of numbers from the array

rules = the first three numbers of the array
must be in (), the next three: 111- and the last
four: 1111. remember the space AFTER the closing parantheses

ex =
 createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) 
 # => returns "(123) 456-7890"

=end

def createPhoneNumber(arr)
  area_code = arr.slice(0..2).prepend('(').append(')') << ' '
  three_digits = arr.slice(3..5) << ('-')
  last_digits = arr.slice(6..9)
  
  p phone_number = (area_code + three_digits + last_digits).flatten.join('')
  
end

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

