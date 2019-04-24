=begin 

input = integer

output = boolean

rules = determine if integer is prime
        no prime class

algorithm =
- return true if 1 || 2
- for each number in range (2..input)
  - return false input % nnmber == 0
- define method pick_primes takes one parameter
- invoke select on the input 
  - for each element of input
  - element if prime?(element)
=end

def prime?(int)
  return false if int == 1

  (2...int).each { |num| return false if int % num == 0 }

  true
end

def pick_primes(arr)
  arr.select { |ele| prime?(ele) }
end

def count_primes(arr)
  arr.count { |ele| prime?(ele) }
end

p count_primes([1, 2, 3, 4])