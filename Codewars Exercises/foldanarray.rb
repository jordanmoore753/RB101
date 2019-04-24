=begin 

input = array

output = array

rules = for each element passed the midpoint index in array,
        add the element to the element whose index is opposite
        from the element being added
        [1, 2, 3, 4, 5]
        4 will be added to 1, 5 will be added to 2
        => [6, 6, 3]
        in odd number of elements, middle element stays the
        same
        in even number of elements, the middle element on the right
        side of the midpoint adds to the element on its left
        always contains numbers
        never null
        if its one element array, it stays the same
          do not modify the original array


datastructures =
- the results of folding will be stored in array named
'results'
- local variable for counting left side will be called left_counter
- local variable for counting right side in will be called right_counter
- local variable for midpoint of array will be called
'midpoint'


algorithm =
- initialize new array named results and assign it to empty array
- initialize local variables left_counter, right_counter and assign to 0 and -1
- initialize local variable midpoint and assign to return value of input_ary.size / 2
- invoke times method with the argument runs 
- invoke until method with conditional statement, and pass a do..end block to it
  - conditional statement is left_counter == midpoint
  - append the return value of array[left_counter] + array[right_counter] to results
  - increment left_counter by 1, decrease right_counter by 1
- return results

=end

# def fold_array(array, runs)
#   results = []
#   array.map { |ele| results << ele }
#   left_counter, right_counter = 0, -1

#   runs.times do
#     midpoint = results.size / 2 
#     left_counter, right_counter = 0, -1
    
#     if results.size == 1
#       break
#     elsif results.size == 2
#       results = results.reduce(:+)
#       break
#     elsif results.size.even?
#       until left_counter >= midpoint
#         results[left_counter] += results[right_counter]
#         results.slice!(-1)
#         left_counter += 1
#       end
#     else
#       until left_counter == midpoint
#         results[left_counter] += results[right_counter]
#         results.slice!(-1)
#         left_counter += 1
#       end
#     end

#     left_counter, right_counter = 0, -1
#   end

#   if results.is_a? Integer
#     [results]
#   else
#     results
#   end
# end   

def fold_array(array, runs)
  newArray = array[0..array.length]
  runs.times do 
    for i in 0...newArray.length/2
      newArray[i] = newArray[i] + newArray.pop
    end
  end
  newArray
end

input = [1, 2, 3, 4, 5]
p fold_array(input, 2) == [9, 6]