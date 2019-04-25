=begin 

input = a string

output = boolean

rules = evaluate whether the parantheses
        in the string open and close
        appropriately
        true if they do, false if not

algorithm =
- initialize parans set to 0
- string split, for each character
  - if char == '('
    += 1 parans
    elsif == ')'
      -= 1 parans
    return false if parans < 0

  return true if parans == 0



=end

def balanced?(str)
  parans = 0

  str.split('').each do |char|
    case char
    when '(' then parans += 1
    when ')' then parans -= 1
    end

    return false if parans < 0
  end

  parans == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

x = [1, 2, 3, 4]
counter = -1
results = []

until results.size == x.size
  results << x[counter]
  counter -= 1
end

p results