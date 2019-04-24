=begin 

input = sentence string as argument to method

output = sentence string, any words that are representative
of integers changed to number strings

rules = five => '5'

ex =

word_to_digit('Please call me at five five five one two three four. Thanks.')
 == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

SUCCESS!

=end

NUMBERS = { 'zero' => '0', 'one' => '1', 'two' => '2',
            'three' => '3', 'four' => '4', 'five' => '5',
            'six' => '6', 'seven' => '7', 'eight' => '8',
            'nine' => '9' }

def word_to_digit(words)
  NUMBERS.each do |word, _|
    words.gsub!(/\b#{word}\b/, NUMBERS[word])
  end
  words

end

p word_to_digit('Please call me at five five five one two three four. Thanks.')