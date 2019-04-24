=begin 

input = an array

output = an array

rules = sort the elements in the array by doing:
        - split the elements into two separate sub-arrays
          ex = [9,5,7,1] => [[9, 5], [7, 1]]
        - split the sub arrays into nested sub arrays
         ex = [[9,5], [7,1]] => [[[9], [5]], [[7], [1]]]
        - sort the nested sub arrays into one array
         ex = [1, 5, 7, 9]

algorithm =
- initialize results array as empty
- initialize counter as 0
- initialize midpoint as array.length / 2
- append the slice of [array...midpoint] to results
- append the slice of [midpoint..array] to results
- for each sub array in resultss
  - for each element in sub array
    - append the [element] to the sub-array [0] in results
- until results.size is same as input arr.size
  - for each sub-array in arr_three
    - for each number in sub_array
      - if number == sorted_val[counter]
      - append number to results

        if sorted_vals[counter].is_a? Integer
          if element.join.to_i == sorted_vals[counter]
            results << element.join.to_i
            counter += 1
          end
        elsif sorted_vals[counter].is_a? String
          if element.join == sorted_vals[counter]
            results << element.join
            counter += 1
          end
        end

  until results.size == arr.size
    arr_three.each do |sub_array|
      sub_array.each do |element|
        element.each do |ele|
          if ele == sorted_vals[counter]
            results << ele 
            counter += 1
          end
        end
      end
    end
  end
=end

def merge_sort(arr)
  sorted_vals = arr.sort 
  counter, results = 0, []
  arr_two, arr_three = [], [[]]
  midpoint = arr.length / 2

  arr_two << arr[0...midpoint]
  arr_two << arr[midpoint..-1]

  arr_two.each do |sub_array|
    sub_array.each do |number|
      arr_three[0] << [number]
    end
  end

  until results.size == arr.size
    arr_three.each do |sub_array|
      sub_array.each do |element|
        element.each do |ele|
          if ele == sorted_vals[counter]
            results << ele               
            counter += 1
          end
        end
      end
    end
  end

  results
end

p merge_sort([9, 5, 7, 1])
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]