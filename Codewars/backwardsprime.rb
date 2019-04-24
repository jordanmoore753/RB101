=begin 

input = two integers

output = an array of integers

rules = determine which numbers in the range
        between input integers are primes both
        backwards and forwards
        13 and 31 are both primes

algorithm =
- invoke select method on range (n..x)
- for each number, return true if
  prime?(number) && prime?(number.digits)
- define method prime? takes one parameter, number
  - for each number between 2...number,
    -if number % counter == 0, return false
  - else, return true



=end

def backwardsPrime(start, stop)
  (start..stop).select { |num| prime?(num) && prime?(num.digits.join.to_i) }
end

def prime?(number)
  return false if number == number.digits.join.to_i
  2.upto(number - 1) { |num| return false if number % num == 0 }
  true
end

# p backwardsPrime(7000, 7100)
p backwardsPrime(500, 740)
p prime?(727)
