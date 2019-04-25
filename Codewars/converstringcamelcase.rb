=begin 

input - string

output = string

rules = convert string to camel case
        camelcase = camelCase
        Camel_case = CamelCase

algorithm =
- results array initialize as []
- split string into words
  for each word, 
    if first word and first char == first char.upcase
      - results << word
    elsif first word and first != first_char upcase
      - results << word
      else
      results << word capitalized


=end

def to_camel_case(str)
  results = []
  str.gsub!(/[[:punct:]]/, ' ')

  str.split(' ').each_with_index do |word, idx|
    if idx == 0 && word[0] == word[0].upcase 
      results << word.capitalize
    elsif idx == 0 && word[0] != word[0].upcase
      results << word
    else
      results << word.capitalize 
    end
  end

  results.join('')
end

p to_camel_case("The-stealth-warrior")