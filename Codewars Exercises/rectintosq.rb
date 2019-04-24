=begin 

input = two integers

output = an array of integers

rules = compute how many squares are in a rectangle
        rectangle is input x input

algorithm =
- initialize results array
- initialize squares array, where 1.upto(input * input - 1)
- until results.reduce is == input * input
  - append 1 to the results array


=end

def sqInRect(lng, wdth)
  return nil if lng == wdth
  counter = 1
  squares = []

  while counter ** 2 < lng * wdth
    squares << counter ** 2
    counter += 1
  end
  p squares
  squares.sort! { |a, b| b <=> a}

  more_ones = lng * wdth - squares.reduce(:+)

  more_ones.times do 
    squares << 1
  end

  squares.map { |num| Math.sqrt(num).to_i }
end

p sqInRect(5, 3)
p sqInRect(5, 5)
p sqInRect(20, 14)
