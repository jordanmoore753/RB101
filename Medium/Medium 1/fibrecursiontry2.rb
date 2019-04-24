=begin 

input = an integer

output = an integer

rules = 



=end

def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end

def fibonacci(n)
  return n if n < 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(4)

def procedural_fib(n)
  arr = [1, 1]

  (n - 2).times do |counter|
    arr << arr[counter] + arr[counter + 1]
  end

  arr.last
end

p procedural_fib(5)

def fibonacci_last(n)
  arr = [1, 1]

  (n - 2).times do |counter|
    arr << arr[counter] + arr[counter + 1]
  end

  nth = arr.slice(-1)
  nth.digits.reverse.last
end

p fibonacci_last(100) == 5