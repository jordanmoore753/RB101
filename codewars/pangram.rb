=begin 

input = one string argument passed into method

output = a boolean

rules = if the string argument is a pangram, meaning
  that it contains every letter of the
  alphabet, the boolean must be true. case
    is irrelevant. ignore numbers and punctuation.

ex = 

"The quick brown fox jumps over the lazy dog" = true

create an array containing all the letters of the alphabet
then break the string into a chars.sort
compare directly with a conditional

=end

def panagram?(string)
  p ('a'..'z').all?
  ('a'..'z').all? { |chars| string.downcase.include? (chars) }
end

p panagram?("The quick brown fox jumps over the lazy dog.")

