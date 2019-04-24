=begin 

input = string

output = string

rules = reverse all words with 5 or more characters
        spaces only when more than 1 word

algorithm =
- invoke map on str split
  - for each word
  - if word.length more than 5 or equal, reverse, else word
=end

def spinWords(string)
  string.split.map { |word| word.length >= 5 ? word.reverse : word }.join(' ')
end

p spinWords("Hey fellow warriors")