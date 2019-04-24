=begin 

input = an array of integers and a target number

output = one array with two integers

rules = return the two indexes of integers from
        array that add up to target number
        array will always be greater than 2,
        all items will be numbers

algorithm =
- initialize counter and assign to value 1
- initialize curr_number and assign to 0
- invoke loop method
  - for each element of array,
    - the array size amount of times,
      - if counter == index of number, increment counter
      - add the current number and counter number
      - if == target number, add both to results array
        and break out of times loop
    - break if results size is 2
    - if not, increment curr_number by 1
      and assign counter to 0

=end

def two_sum(numbers, target)
  counter, curr_number = 1, 0
  results = []
  
  loop do 
    (numbers.size - 1).times do 
      counter += 1 if curr_number == counter
    
      results += [curr_number, counter] if numbers[curr_number] + numbers[counter] == target
      break if results.size == 2

      counter += 1
    end

    break if results.size == 2

    counter = 0
    curr_number += 1
  end
  
  results.sort
end

p two_sum([1, 2, 3], 4)
p two_sum([1234, 5678, 9012], 14690)
p two_sum([31, 46, 43, 52, 80, 93, 19, 34, 64, 83, 5, 47, 98, 0, 91, 21, 66, 75, 86, 95, 42, 37, 44, 17, 61, 95, 29, 36, 36, 2, 59, 76, 96, 37, 9, 19, 43, 45, 17, 94, 35, 1, 33, 42, 77, 48, 9, 6, 24, 23, 92, 26, 68, 91, 76, 24, 98, 25, 50, 25, 8, 29, 43, 18, 4, 86, 52, 33, 93, 37, 53, 8, 61, 72, 41, 46, 53, 55, 7, 27, 36, 88], 56)