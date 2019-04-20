=begin 

input = integer

output = string

rules = print out the input in standard form 
        12 = '10 + 2'

algorithm =
- initialize number_length as the length of input as a string
- initialize results as empty array
- initialize zeros as number_length - 1
- initialize new_arr as the integers digits
- for each digit in new_arr
  - add to result the sum of digit.to_s + '0' * zeros
  - decrease zeros by 1
- join the array with +

=end

def expanded_form(num)
  number_length = num.to_s.length
  zeros = number_length - 1

  num.digits.reverse.each_with_object([]) do |digit, arr|
    arr << digit.to_s + '0' * zeros if !digit.zero?
    zeros -= 1
  end.join(' + ')

end

p expanded_form(70304)

