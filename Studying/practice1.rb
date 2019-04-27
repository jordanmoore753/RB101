=begin 

Reverse the Range!

Directions: 

Given an array and an integer ([1, 2, 3, 4, 5], 1), only reverse
the elements in an array from index of given integer to the end of the array. 
Then, return the number at the middle of the new array.

If there are an even number of elements, return the middle element whose index is closer to index 0.

Do not use #rotate or #reverse. 

([0, 19, 4, 299], 2) => [0, 19, 299, 4] => 19

The top example explained:
- Integer 2 is the start of the range of the array that must be reversed.
- The range goes from 2 to the end of the array.
- The numbers before the index of 2, here: 0 and 19, remain in the same order.
- After the array is reversed, we return the element at the middle of the array.
- Since this array has an even number of elements, we return the middle element closest to index 0.

The elements outside of the range must remain in the same order. 

TEST CASES

p middle_idx_arr([0, 1, 2, 3, 4, 5, 6], 2) == 5
p middle_idx_arr([0, 19, 4, 299], 2) == 19
p middle_idx_arr([5, 3, 15, 22, 854, 1234, 432, 123], 4) == 22

#####

input = array integer

output = integer

rules = 

algorithm =
- results array empty array
- append array of (0...int) to results
- append result of reverse_arr(arr[int..(arr.length - 1)])
- define method reverse_arr
 - iniitialize results as empty array
 - until results.size == input array.size
  - counter to -1
  append arr-1 to results
  return results

- flatten the array
divide the array in 2 and store in mid variable - 1

return array[mid]


=end

def reverse_array(array)
  results, counter = [], -1

  until results.size == array.size
    results << array[counter]
    counter -= 1
  end

  results
end


def middle_idx_arr(arr, int)
  return arr if int > arr.size
  results = []
  arr.size.odd? ? mid = arr.size / 2 : mid = (arr.size / 2) - 1
  
  results << arr[0...int]
  results << reverse_array(arr[int..(arr.size - 1)])

  results.flatten!
end


def random_arr
  arr = []
  rand(5..54).times { arr << rand(10034) }
  arr
end

def random_int
  int = rand(5..55)
end


p random_int
# p rand(25..100)
p middle_idx_arr([0, 1, 2, 3, 4, 5, 6], 2) 
p middle_idx_arr([0, 19, 4, 299], 2) 
p middle_idx_arr([5, 3, 15, 22, 854, 1234, 432, 123], 4)
p middle_idx_arr([], 1) == []
p middle_idx_arr(['thoros', 'of', 'myr', 44, 54, 5432, 1223, 76543, 'eggs'], 10)
