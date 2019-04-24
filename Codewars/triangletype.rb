=begin 

input = 3 integers

output = an integer, 0 1 2 3

rules = calculate the type of triangle given 3 side lengths
        0 for not triangle
        1 for acute
        2 for right
        3 for obtuse

algorithm =
- initialize array of the three inputs
- slice the max value from array
- return 0 if max value is same or bigger than the array summed
- define method named law_of_cos that takes 3 parameters(s1, s2, angle)
- cos = (s1 ** 2 + s2 ** 2 - angle ** 2) / 2 * s1 * s2
- calculate all 3 angles and add to array named angles
- if one angle is exactly 90 return 2
- if one angle is greater than 90 return 3
  - else return 1
=end

def triangle_type (a, b, c)
  initial_values = [a, b, c].sort
  max_value = initial_values.pop
  return 0 if max_value >= initial_values.reduce(:+)

  initial_values = [a, b, c].sort
  pythag(initial_values)
end

def pythag(arr)
  left, right = arr[0] ** 2 + arr[1] ** 2, arr[2] ** 2
  return 1 if left > right
  return 2 if left == right
  return 3 if left < right
end

p triangle_type(2, 4, 6)
p triangle_type(8, 5, 7)
p triangle_type(7,12,8)