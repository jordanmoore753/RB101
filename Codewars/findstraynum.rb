=begin 

input = an array

output = an integer

rules = find the integer that is different

ex

[1, 1, 2] ==> 2
[17, 17, 3, 17, 17, 17, 17] ==> 3

=end

def stray(arr)
  arr.each { |num| return num if arr.count(num) == 1 }
end

p stray([17, 17, 3, 17, 17, 17, 17])

