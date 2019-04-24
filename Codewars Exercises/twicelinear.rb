=begin 

input = a single argument, an integer

output = a single integer

rules = the first array element is 1. for each successive index
element, compute 
y = 2 * x + 1
z = 3 * x + 1
add each to the array
and sort
removing duplicates may be necessary

ex = 

u = [1, 3, 4, 7, 9, 10, 13, 15, 19, 21, 22, 27, ...]
input was n, 10
so output = 22

=end
 
# I Solved it, it works. Best practice is below.

# def dbl_linear(int)
#   arr = [1]
#   counter = 0

#   int.times do |counter|
#     arr << (2 * arr[counter]) + 1
#     arr << (3 * arr[counter]) + 1
#     arr.sort!.uniq!
#   end
#   p arr
#   arr[int]
# end

def dbl_linear(n)
  result = [1]

  i = 0
  j = 0

  until result.size == n + 1
    first = 2 * result[i] + 1
    second = 3 * result[j] + 1
    min = [first, second].min 

    result << min # You're only adding the smaller of the two

    i += 1 if min == first
    j += 1 if min == second
  end

  result.last
end

p dbl_linear(10) # 22
p dbl_linear(20) # 57
p dbl_linear(30) # 91
p dbl_linear(50) # 175


