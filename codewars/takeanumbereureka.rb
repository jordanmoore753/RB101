=begin 

input = integer

output = an array

rules = given a range between two input integers
        return an array containing all numbers
        that satisfy the property of
        all of its digits equaling itself

algorithm =
- initialize counter to 1
- invoke select on the range (input..input)
  for each number,
    if number.to_s.length == 1
      or
    turn num into array called num_digits
    for map digit in num,
      num ** counter
      counter += 1
    sum the array with reduce, if equal to num,
    then true

=end

def sum_dig_pow(a, b)

  (a..b).select do |num|
    power = 0

    num.digits.reverse.map do |digit|
      power += 1
      digit ** power
    end.reduce(:+) == num
    
  end
end

p sum_dig_pow(1, 100)