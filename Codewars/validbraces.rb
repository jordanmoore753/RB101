=begin 

input = a string

output = a boolean

rules = return a boolean that determines if
        the parantheses are correct in the string
        no close before open, etc,.

algorithm =
- initialize variable named parans , set to 0
- initialize curly and square set to 0 each
- for each char in input string
- if char == '(', '{', '[' , parans, etc., + 1
  if char == ')' parans + 1
- if parans < 0, return false
- return true if parans == 0

=end

def valid_parentheses(string)
  parans = 0
  curly, square = 0, 0

  string.each_char do |char|
    case char
    when '(' then parans += 1
    when ')' then parans -= 1
    when '{' then curly += 1
    when '}' then curly -= 1
    when '[' then square += 1
    when ']' then square -= 1
    end
    
    return false if parans < 0 || curly < 0 || square < 0
  end

  parans == 0 && curly == 0 && square == 0
end

p valid_parentheses('')
p valid_parentheses("hi())(")