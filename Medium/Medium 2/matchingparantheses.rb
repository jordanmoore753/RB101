# input = a string argument passed into method

# output = a boolean

# rules = return true boolean if all parantheses
# in the input string argument are properly balanced
# false otherwise

# cannot start with ')'
# if it doesn't, count total amount of parantheses
# if equal you're good

# ex = 

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

def balanced?(str)
  parantheses = { '(' => 0, ')' => 0 }
  str.chars.each do |char|
    if char == ')' && parantheses['('] == 0
      return false
    elsif str.chars[-1] == '(' || str.chars[0] == ')'
      return false
    elsif char == '('
      parantheses['('] += 1
    elsif char == ')'
      parantheses[')'] += 1
    end
  end
  
  return true unless parantheses['('] != parantheses[')']
  false
end

# BEST PRACTICE

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false




