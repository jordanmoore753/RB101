=begin 

input = string of numeric characters

output = an integer of those numeric characters
from input

rules: no to_i, integer(), or any other 
conversion methods

=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def string_to_integer(str)
    up_str = str.upcase
    digits = up_str.chars.map {|char| DIGITS[char] }

    value = 0
    digits.each {|digit| value = 16 * value + digit }
    value
end

p string_to_integer('4D9F')