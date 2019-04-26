=begin 

input = string

output = string

rules = convert string to camelcase
        CamelCase
        each word no spaces capitalized


algorithm =
- string.split(' ') invoke map for each elmenet,
 - capitalize the word
- join with no space

=end

def camel_case(str)
  str.split(' ').map { |word| word.capitalize }.join('')
end

p camel_case('hello world')

