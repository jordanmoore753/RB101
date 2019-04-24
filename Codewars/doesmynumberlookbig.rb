=begin

input = an integer argument passed into method

output = a boolean, true or false

rules = if the integer is narcissistic, meaning that it is
  the sum of its own digits, each raised to the power of the 
  total number of digits in it, then the output is true.

ex = 

1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

=end

def narcissistic?(value)
  value_digits = value.digits.reverse
  powers_array = []

  value_digits.map do |number|
    powers_array << number ** value_digits.size
  end

  powers_array = powers_array.reduce(:+)
  powers_array == value ? true : false
end

p narcissistic?(1633)



