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

p getLengthOfMissingArray([ [ 1, 2 ], [ 4, 5, 1, 1 ], [ 1 ], [ 5, 6, 7, 8, 9 ]] ) == 3
p getLengthOfMissingArray([ [ 5, 2, 9 ], [ 4, 5, 1, 1 ], [ 1 ], [ 5, 6, 7, 8, 9 ]] ) == 2
p getLengthOfMissingArray([ [ false ], [ false, false, false ] ] ) == 2
p getLengthOfMissingArray([ [ 'a', 'a', 'a' ], [ 'a', 'a' ], [ 'a', 'a', 'a', 'a' ], [ 'a' ], [ 'a', 'a', 'a', 'a', 'a', 'a' ]] ) == 5
      
p getLengthOfMissingArray([ ]) == 0