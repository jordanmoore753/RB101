=begin 

input = two arrays

output = one array

rules = do not use any sort method
        combine both arrays in ascending order
        numbers only
        do not mutate original arrays (create duplicates)
        build the new array ONE ELEMENT AT A TIME

explained = 

algorithm =
- initialize two new arrays as duplicates of input arrays
- initialize new array named results and assign an empty array
- initialize two variables, arr1_min, arr2_min, set to 0
- initialize var named combined and assign it to (arr1 + arr2).length
- length.times do the following
  - assign the minimum value of each array to respective variables
  - determine which is smaller
  - if the same, add both to the results array
  - if one is bigger than the other, add the smaller one

          arr1_min_idx = arr1.index(arr1_min)
      arr1.delete_at(arr1_min_idx)
=end

def merge(arr_one, arr_two)
  return arr_one if arr_two.empty?
  return arr_two if arr_two.empty?

  arr1 = arr_one.dup
  arr2 = arr_two.dup
  results = []
  combined_length = (arr1 + arr2).length

  combined_length.times do
    arr1_min, arr2_min = arr1.min, arr2.min
   
    if arr1.empty? || not_nil?(arr2_min) && first_is_smaller?(arr2_min, arr1_min)
      results << arr2_min 
      delete_from_arr(arr2_min, arr2)
    elsif arr2.empty? || not_nil?(arr1_min) && first_is_smaller?(arr1_min, arr2_min)
      results << arr1_min 
      delete_from_arr(arr1_min, arr1)
    else 
      results += [arr1_min, arr2_min]
      delete_from_arr(arr1_min, arr1)
      delete_from_arr(arr2_min, arr2)  
    end
  end

  results
end

def delete_from_arr(value, arr)
  arr.delete_at(arr.index(value))
end

def first_is_smaller?(one, two)
  one < two
end

def not_nil?(value)
  value != nil
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
