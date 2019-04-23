# You will be given a number and you will need to return it as a string in expanded form. For example:
#
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
#
# Note: All numbers will be whole numbers greater than 0.

=begin 

input = integer

output = string

rules = return the integer in expanded form
        - a string
        - 12 = '10 + 2'
        - 42 = '40 + 2'

algorithm =
- initialize nbr_length as length of integer
- initialize zeros variable as nbr_length - 1
- split integer to str and split
- invoke each_with object for each number 
  - if the int is not zero
    - add how many zeros * zeros to the num and add to []
  - join with +


=end

def expanded_form(num)
  nbr_length = num.to_s.length
  zeros = nbr_length - 1
  results = []

  num.digits.reverse.each do |number|
    results << number.to_s + '0' * zeros if !number.zero?
    zeros -= 1
  end

  results.join(' + ')
end

p expanded_form(12)
p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'



