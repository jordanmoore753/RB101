=begin 

input = an integer

output = boolean

rules = prime number is a number greater than one
        that has no positive divisors other than 1 and itself
        evaluate whether input is a prime 

algorithm =
- for each num in (1...input)
- if input % count is 0, then return false
- if it reaches the end of the iteration
  return true

=end

def isPrime?(x)
  return false if x < 1
  (2...x).each { |num| return false if x % num == 0 }
  true
end

p isPrime?(5)
