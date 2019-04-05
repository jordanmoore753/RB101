=begin 

input = 3 integers passed as arguments

output = return a single symbol

rules = 3 kinds of triangles:

equilateral - all 3 are the same size
isosceles - 2 sides are equal, 3rd is different
scalene - all 3 sides are different

whichever one is accurate to the three
integers in the argument, is outputted
as a symbol 

ex =

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

It will be easier to work with this if 
the integers are in an array, so that's the 
first thing I've got to do.

Then, set up some conditionals to determine
the side.

A running counter that takes the value of the
last element passed into the each would be good
for comparing the elements.

=end

def triangle(int, int2, int3)
  symbols = { 3 => :equilateral, 2 => :isosceles, 1 => :scalene, 0 => :invalid }
  int_array = [int, int2, int3]
  equal_sides, counter = 0, 1
  
  

 


  p symbols[equal_sides]
end

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid