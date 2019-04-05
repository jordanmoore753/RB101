=begin 

input = an integer argument

output = an integer

rules = compute the square of the integers leading
up to and including the integer input

(3) => (1 + 2 + 3)**2

then subtract the sum of each square from that

- (1**2 + 2 ** 2 + 3**2)

ex = 

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

check if you can do (1..n) to get an array 
  of all digits leading up to and including

  then do the math in separate iterations
    reduce(:+)
=end

def sum_square_difference(int)
  arr, multi_square = [], []
  (1..int).each { |num| arr << num }

  single_square = arr.reduce(:+)**2

  arr.each do |number|
    multi_square << number ** 2
  end

  single_square - multi_square.reduce(:+)
end

p sum_square_difference(3)
