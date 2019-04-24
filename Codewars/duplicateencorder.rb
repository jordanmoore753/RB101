=begin 

input = string

output = a string

rules = for each character in string,
        if it appears more than once, replace with ')'
        if it appears once, replace with '('
        case insensitive, make everything lowercase
          for convenience

algorithm =
- results variable set to ''
- string split and each, for each character
  - if the count > 1, add ')' to results
    - else add '('


=end

def duplicate_encode(word)
  results = ''
  
  word.downcase.split('').each { |char| word.downcase.count(char) > 1 ? results += ')' : results += '('}

  results
end

p duplicate_encode("din")
p duplicate_encode("recede")