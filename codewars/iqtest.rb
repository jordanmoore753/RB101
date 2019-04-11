=begin 

input = a string

output = an integer

rules = one of the numbers will differ in being odd or
        even, while the rest of the numbers are
        the opposite.
        Find the index number + 1 of the number that
        is different from the rest in terms of being
        odd or even.

data_structures = 
- an array named `numbers` for the string argument
- a local variable named 'evens' for the amount of
even numbers in the array
- a local variable named `result` for the
number that differs from the rest

algorithm =
- initialize array `numbers` as the return value of:
  - for every element in str argument, invoke method to_i and return value
- initialize local variable 'evens' as the return value of:
  - for array `numbers`, count the number of elements that
  are even ( n % 2 == 0 )
- if 'evens' is equal to 1,
  - for each element in numbers, return the element that is even
- else if evens is greater than 1,
  - for each element in numbers, return the element that is odd


=end

def iq_test(str)
  numbers = str.split.map { |element| element.to_i }
  evens = 0
  
  numbers.map { |element| evens += 1 if element.even? }

  if evens == 1
    numbers.map.with_index { |ele, idx| return idx + 1 if ele.even? }
  else
    numbers.map.with_index { |ele, idx| return idx + 1 if ele.odd? }
  end

end

p iq_test('2 4 7 8 10')