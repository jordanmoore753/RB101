=begin 

input = method that takes two arrays as arguments

output = return new array that contains all elements of
both array arguments but with elements taken in
alternation

ex: interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

=end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

a = [1, 2, 3]
b = ['a', 'b', 'c']

interleave(a, b) == [1, 'a', 2, 'b', 3, 'c']