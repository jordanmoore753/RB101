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

def word_to_digit(str)
  WORDS_AND_NUMBERS.keys.each do |word|
    str.gsub!(/\b#{word}\b/, WORDS_AND_NUMBERS[word])
  end
    str 
end

WORDS_AND_NUMBERS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
                      'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
                      'eight' => '8', 'nine' => '9' }

request = 'Please call me at five five five one two three four. Thanks.'

p word_to_digit(request)


