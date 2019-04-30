=begin 

Select the element(s) from an array if its index number is a Fibonacci.

input = array

output = array

rules = if the element has an index that is a Fib, return it in a new array

algorithm =
the size of the array, populate a fibonacci sequence with it
- start with [1,1]
- counter = 0
  - fibs << fibs[counter] + fibs[counter + 1]

- select with index method on input array
  - if idx is included in fibs, add element to selected elements


=end

def fibonacci_select(arr)
  fibs = [1, 1]
  counter = 0

  arr.size.times do 
    fibs << fibs[counter] + fibs[counter + 1]
    counter += 1
  end
  
  arr.select.with_index { |ele, idx| fibs.include?(idx) }
end

p fibonacci_select([1, 3, 'jone', 4, 5, 6, 7, 8])