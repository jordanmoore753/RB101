a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

p arr

=begin 

The output is [4, [3,8]]. 'a' within the array is modified to 4 since we're being destructive
with the reassignment on arr[0] which reassigns it to 4 after addition. This does not, however,
modify the original variable, 'a'. I believe this is because an array and local variable
are different data structures and thereby must point at different objects. The subtraction
and reassignment on line 6 is referencing the local variable 'a', not the [a] in the array,
so the output for that is 3 (5 -2 == 3). Also, 'b' outside the array did not change since 
local variable 'b' is not an array.

=end