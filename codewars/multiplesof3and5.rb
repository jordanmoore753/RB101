=begin 

input = integer

output = integer

rules = create an array of all multiples of 3 and 5
        up to but not including the input
        sum the array and that's the return value

algorithm =
- initialize new array named results
- for each number in 1...input,
  select the number if its % 3 or % 5 == 0
- reduce the results array

=end

def solution(number)
 (1...number).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end

p solution(15)