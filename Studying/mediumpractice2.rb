=begin 

input = integer, integer

output = integer

rules = rotate the first integer's n amount of
        digits and return that number

algorithm =
- create results array empty array
- if int.length == second int
  - invoke rotate array on the int.digit.reverse
- else
  - left and right variables
  - left is slice of (-int.length...-int), right is slice of -int..-1
  - right side will have rotate array method invocation
  - add left and right together, convert to a string then integer

=end

def rotate_array(arr)
  results = []
  arr[1..-1].each { |ele| results << ele }
  results << arr[0]
end

def rotate_rightmost_digits(int, int2)
  results = []
  int_array = int.digits.reverse

  if int.digits.size == int2
    results << rotate_array(int.digits.reverse)
  else
    left, right = int_array[-(int_array.size)...-(int2)], int_array[-(int2)..-1]
    results << left
    right = rotate_array(right)
    results << right
  end

  results.flatten.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


def odds_dash(int)
  results = []
  int_arr = int.digits.reverse

  int_arr.each_with_index do |num, idx|
    results << num
    results << '-' if num.odd? && int_arr[idx + 1].odd?
  end

  results.join('')
end

p odds_dash(13256794) == '1-32567-94'


Write a method that takes in a number and returns a string, placing
a dash in between odd digits.

input = number (integer)
output = string
rules = place a dash '-' in between odd digits

algorithm:
- initialize results variable as empty array
- invoke digits on input integer, and invoke reverse
- for each number and index,
  number append to results array
  if number is odd and next number is odd
  append '-' to results
return results
