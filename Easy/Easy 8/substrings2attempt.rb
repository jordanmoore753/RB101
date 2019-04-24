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

def substrings_at_start(str)
  empty_array = []

  0.upto(str.length - 1) do |count|
    empty_array << str[0..count] 
  end
  empty_array
end

def substrings(str)
  array_of_strings = []
  counter = 0

  str.each_char do |char|
    array_of_strings << substrings_at_start(str[counter..-1])
    counter += 1
  end

  array_of_strings.flatten
end

def palindromes(str)
  list_of_substrings = substrings(str)
  list_of_palindromes = []

  list_of_substrings.each do |substring|
    list_of_palindromes << substring if palindrome?(substring)
  end

  list_of_palindromes
end

def palindrome?(str)
  str == str.reverse && str.length > 1
end

p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
