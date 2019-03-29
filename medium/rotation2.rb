=begin 

input = 2 parameters passed as arguments to method
both integers, first one is number to be manipulated by
second number

output = return the first number parameter but
with n digits (based on second parameter) rotated

quals =

ex = 

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

The key here is figuring out a calculation
that works for each index value.

1 doesn't do anything.
2 switches the last two digits.
3 switches the last three digits.

It seems that the second number, if negative,
can represent the index value if counting
from the right.
ex: -6 would be the value 7, meaning that
all digits are rotated 

def rotate_rightmost_digits(int, num)
  num = -(num) 
  (int.digits.reverse[0...num] + (int.digits.reverse[num + 1..-1] << int.digits.reverse[num])).join('').to_i
end

=end

def rotate_rightmost_digits(int, num)
  num = -(num) 
  right_index = -1

  if num == right_index
    int
  else
    (int.digits.reverse[0...(num)] + (int.digits.reverse[num + 1..-1] << int.digits.reverse[num])).join('').to_i
  end
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

