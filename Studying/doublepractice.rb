=begin 

input integer

output = integer

rules =
-if digits on left side match right side
  return as same integer
- if not, double the number

algorithm =

- num_str set to input num to a string
- mid set to numstr length / 2
- create two new arrays, sliced from the num_str
  - use split on str
- if length is even,
    first split is 0...mid
    second split is mid..num_str.length - 1

if first == second return num 
  else return num * 2

=end

def twice(num)
  num_str = num.to_s
  arr1, arr2 = [], []
  mid = num_str.length / 2
  num_arr = num_str.split('')

  if num_str.length.even?
    arr1 = num_arr[0...mid]
    arr2 = num_arr[mid..(num_str.length - 1)]
  else
    arr1 = num_arr[0..mid]
    arr2 = num_arr[mid + 1..(num_str.length - 1)]
  end

  arr1 == arr2 ? num : num * 2
end

p twice(37)
p twice(44)
p twice(334433)