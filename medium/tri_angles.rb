=begin 

input = three integer arguments passed into method

output = a symbol

rules = a right triangle has one angle that is 90,
an acute triangle has all less than 90,
an obtuse triangle has one angle greater than 90
invalid if sum of angles is not 180 or
not all angles are greater than 0

return a symbol that says the triangle's name
based on the integer arguments passed

ex =

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

put them in an array, do reduce to check for
  first invalid condition
  then do include to see if there are 0's

next set up conditional, if there is a 90, right,etc
ive already checked for sum == 180 so no need
to include conditionals for that here

=end

def triangle(int, int2, int3)
  arr = [int, int2, int3]

  if arr.reduce(:+) != 180
    return :invalid
  elsif arr.include?(0)
    return :invalid
  end

  arr.each do |number|
    return :right if number == 90
    return :obtuse if number > 90
  end
  
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid