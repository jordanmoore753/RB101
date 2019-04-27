=begin 

input = integer

output = boolean

rules = if the integer is an amount
        that represents a valid
        triangle
        3, 6, 10, 15
        then return true

algorithm = 
- initialize valid_num array as empty
- counter set to 0
- n.times --
  add counter 1, append to results the result of result[-1] + counter
  end
- valid nums include n?

=end

def isTriangleNumber(number)
  return true if number == 0
  results = []
  counter = 0
  
  number.times do
    results << counter if results.empty? 
    counter += 1
    results << results[-1] + counter
  end
p results
  results.include?(number)
end

p isTriangleNumber(8)
p isTriangleNumber(6)
p isTriangleNumber(0)