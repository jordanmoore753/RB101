=begin 

input = a string

output = a boolean

rules = return a boolean that determines if
        the parantheses are correct in the string
        no close before open, etc,.

algorithm =
- initialize variable named parans , set to 0
- for each char in input string
- if char == '(' parans + 1
  if char == ')' parans + 1
- if parans < 0, return false
- return true if parans == 0

=end

def valid_parentheses(string)
  parans = 0

  string.each_char do |char|
    parans += 1 if char == '('
    parans -= 1 if char == ')'
    return false if parans < 0
  end

  parans == 0 
end

p valid_parentheses('')
p valid_parentheses("hi())(")