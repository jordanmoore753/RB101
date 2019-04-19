=begin 

input = an integer and an integer

output = the second integer or the negation of it

rules = given an integer to play with
        and an integer to use as exponent for each successive digit
        figure out if the raising of each digit
        of a number to second parameter 'p' (incrementing by 1
        each digit)
        equals the first parameter * second parameter

algorithm =
- initialize new_arr as k digits reverse
- initialize result as 0
- for each digit in new_arr
  - result + digit ** p
  - increment counter by p
- return -1 if the return value of result % k is not zero
- result / k

=end

def dig_pow(n, p)
  arr = n.digits.reverse
  result = 0

  arr.each do |digit|
    result += digit ** p
    p += 1
  end

  result % n == 0 ? (result / n) : -1
end

p dig_pow(46288, 3)