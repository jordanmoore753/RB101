def integer_to_string(num)
  num.digits.reverse.join
end

def signed_integer_to_string(num)
  if num.negative?
    num *= -1
    puts "-#{integer_to_string(num)}"
  elsif num.positive?
    puts "+#{integer_to_string(num)}"
  else
    puts "#{integer_to_string(num)}"
  end
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123) 
p signed_integer_to_string(5000)