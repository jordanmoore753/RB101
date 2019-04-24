=begin

input = string argument passed into method

output = the middle character from the string argument

rules = if odd number of characters, print one middle
  if even number, print two middle characters

ex = Kata.getMiddle("test") should return "es"

Kata.getMiddle("testing") should return "t"

Kata.getMiddle("middle") should return "dd"

Kata.getMiddle("A") should return "A" 

0 1 2 3 4 5 6 7 (even will be (idx - 1) and idx)

=end

def get_middle(str)
  middle_of_string, even_middle_of_string = str.length / 2, (str.length / 2) - 1
  str.length.odd? ? str[middle_of_string] : str[even_middle_of_string..middle_of_string]
end

x = 'test'

p get_middle(x)






