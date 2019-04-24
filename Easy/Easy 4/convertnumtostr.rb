def integer_to_string(num)
  new_arr = []
  new_arr << num
  new_arr.join('')
end

#or

def integer_to_string(num)
 num.digits.reverse.join
end

p integer_to_string(4321)
p integer_to_string(0) 
p integer_to_string(5000) 