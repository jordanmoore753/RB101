=begin 

input = an array passed as argument

output = same array

rules = iterate through array
        compare current and next element
        if first is bigger, swap the two
          continue iterating
        first time you iterate through
        entire array with no swap
        you can break the loop and
        be done cuz its sorted

ex = 

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

=end

def bubble_sort!(arr)
  counter = 0
  successful_passes = 0
  
  loop do
    arr.each do |value|
      if arr[counter + 1] == nil
        counter += 1
        successful_passes += 1
      elsif value > arr[counter + 1]
        arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter]
        counter += 1
      else
        counter += 1
        successful_passes += 1
      end 
    end

    break if successful_passes == arr.size

    counter = 0
    successful_passes = 0
  end
  arr
end

p bubble_sort!([5, 3])
p bubble_sort!([6, 2, 7, 1, 4])
array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)

