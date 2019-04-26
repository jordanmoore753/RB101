=begin 

input = array

output = boolean

rules = return true if the directions given
        will lead you back to the same point you
        started

algorithm =
- initialize up_down to 0
- initialize left_right to 0
- for each letter in array
  - if n, increment up down
    if s, decrement up down
    if w, increment left right
    if e, decrement left right


=end

def isValidWalk(walk)
  return false if walk.size <= 2 || walk.size > 10
  
  up_down = 0
  left_right = 0
  
  walk.each do |letter|
    case letter
    when 'n' then up_down += 1
    when 's' then up_down -= 1
    when 'w' then left_right += 1
    when 'e' then left_right -= 1
    end
  end

  up_down == 0 && left_right == 0
end