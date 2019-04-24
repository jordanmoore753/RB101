=begin 

input = an array of string letter elements passed
to method

output = the single missing string from the increasing
consecutive letters of the alphabet

rules = length >= 2, lowercase OR uppercase, always one
letter missing, always valid array.

ex =

['a','b','c','d','f'] -> 'e'
['O','Q','R','S'] -> 'P'

create one array with all of the possible letters in order
slice the array with all of the characters by the 
first and last letters in the input array
find and return the missing letter
=end

def find_missing_letter(arr)
  array_all_letters = []
  ('a'..'z').each { |char| array_all_letters << char } 
  ('A'..'Z').each { |char| array_all_letters << char } 

  first_value, last_value = array_all_letters.index(arr[0]), array_all_letters.index(arr[-1]) 
  new_array = array_all_letters.slice(first_value..last_value)
  
  new_array.map do |letter|
    if arr.include?(letter) == false
      return letter
    end
  end

end

p find_missing_letter(['A', 'B', 'C', 'E'])
