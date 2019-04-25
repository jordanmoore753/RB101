=begin 

input = an array

output = an array

rules = rotate the first element of the array onto
        the last, shifting all other elements down 1
        no #rotate method

algorithm =
- initialize results array empty
- results append first element of input array
- for each element in 1..-1 of array,
  - append to results
=end

def rotate_array(arr)
  results = []
  arr[1..-1].each { |ele| results << ele }
  results << arr[0]
end

p rotate_array([7, 3, 5, 2, 9, 1])
x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]   