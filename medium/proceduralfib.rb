=begin 

input = integer

output = integer

rules = must be recursive
        find number at index number (integer input)

ex =

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

if it's less than 2 then just return 1.
since we're going backwards, we want to subtract
in our method recursion calls.
fib(n -1) + fib(n - 2)
=end

def fibonacci(n)
  if n < 2
    return n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

p fibonacci(12)

x = [1, 3, nil, 5, nil]

x.delete(nil)

p x