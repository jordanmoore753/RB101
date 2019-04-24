
# Write a method that takes in a number and returns a string, placing
# a dash in between odd digits.

# input = number (integer)
# output = string
# rules = place a dash '-' in between odd digits

# algorithm:
# - iterate over the number as an array
# - convert number to string
# - check for an odd number followed by another odd number
#   if true, add a '-' after current number
    
def dasherizer(num)
  num_digits_arr = num.digits.reverse
  results = []
  
  num_digits_arr.each_with_index do |number, idx|
    results << number
    next if idx == num_digits_arr.size - 1 
    results << '-' if number.odd? && num_digits_arr[idx + 1].odd? 
  end
  
  results.join('')
end

p dasherizer(2112) == '21-12'
p dasherizer(201105742) == '201-105-742'
p dasherizer(123456789) == '123456789'
p dasherizer(21121) == '21-121'

