=begin 

input = array of subarrays

output = integer

rules = return the length of missing array
        each subarray has a different length
        one subarray is missing from the array
        find which one it is

algorithm =
- initialize sizes array and set empty
- for each subarray of arr,
  - append length of subarray to sizes
- initialize an array of range from 0..-1 of sizes
= subtract sizes from range array

=end

def getLengthOfMissingArray(array_of_arrays)
  return 0 if array_of_arrays == [] || array_of_arrays == nil
  sizes = []

  array_of_arrays.each do |subarray| 
    return 0 if subarray == [] || subarray == nil
    sizes << subarray.length 
  end

  sizes.sort!
 
  total_arr = (sizes[0]..sizes[-1]).to_a
  (total_arr - sizes).join.to_i
end

p getLengthOfMissingArray([[ 1, 2 ], [ 4, 5, 1, 1 ], [ 1 ], [ 5, 6, 7, 8, 9 ]])
p getLengthOfMissingArray([[6, 1, 8, 7, 8, 6, 0], [6, 4, 8, 0, 0, 2, 1, 3, 6, 7], [2, 7, 2, 4], [3, 4, 8, 2, 4, 5, 7, 4, 1, 1, 0, 1, 3, 8], [0, 4, 0, 4, 8, 4, 5, 2, 1, 6, 2, 0], [1, 1, 6, 1, 1, 5, 5, 4, 1, 0, 1], [4, 6, 0, 4, 7, 2, 8, 0], [], [3, 4, 2, 3, 3, 8, 3, 4, 8], [7, 8, 4, 7, 0], [3, 6, 7, 0, 2, 4, 8, 4, 7, 7, 0, 6, 8, 2, 7, 8], [1, 8, 3, 3, 5, 3, 5, 8, 1, 6, 8, 4, 3], [1, 8, 7, 7, 1, 6, 5, 8, 8, 5, 1, 0, 2, 6, 0]])
p getLengthOfMissingArray([[6, 1, 1, 0, 5, 7, 0, 8, 5, 7, 2, 3, 2, 7, 5, 5, 6, 1, 1, 0, 0, 1, 5, 1, 4, 1, 6, 0, 0, 6, 2, 6, 8, 6], [], [5, 4, 0, 0, 3, 7, 5, 3, 7, 2, 3, 0, 5, 6, 1, 0, 5, 2, 1, 3, 7, 1, 0, 2, 6, 8, 8, 4, 0, 5, 3, 3, 3, 1, 1], [3, 3, 5, 2, 8, 3, 3, 6, 6, 8, 6, 6, 1, 3, 0, 8, 2, 1, 1, 7, 0, 2, 5, 1, 2, 1, 1, 7, 1, 5, 8, 0, 3]])