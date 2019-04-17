=begin 

input = an integer

output = an integer

rules = must use recursion
        method must call itself at least once
        must have guard clause that prevents infinite loop
        must use the result returned by itself

explained = fibonacci sequence is a sequence of numbers
            where the current number is the sum of the two previous numbers
            [1, 1, 2, 3, 5]
            the job here is given an argument (n) find the (n) number
            computed by fibonacci

algorithm =
- initialize array

=end

def fibonacci(number)
  arr = [1, 1]
  counter = 0

  until arr.size == number
    arr << arr[counter] + arr[counter + 1]
    counter += 1
  end

  arr.last
end

def fib_recursion(number)
  return number if number < 2

  fib_recursion(number - 1) + fib_recursion(number - 2)
end

p fibonacci(5)
p fib_recursion(5)

