=begin 

input = an array of at least three integers

output = integer

rules = find the missing integer from given array

algorithm =
- find pattern that the array holds
- subtract idx[0] from idx[-1] and assign to var pattern
- invoke each_with_index on sequence
- if difference between curr index and next index isn't pattern
  - return value of curr index + pattern

=end

def find_missing(sequence)
  pattern = sequence[1] - sequence[0]
  sequence.each_with_index { |num, idx| return num + pattern if sequence[idx] + pattern != sequence[idx + 1] }
end

p find_missing([1, 2, 3, 4, 6, 7, 8, 9])
p find_missing([1, -3, -7, -11, -19, -23, -27, -31, -35])