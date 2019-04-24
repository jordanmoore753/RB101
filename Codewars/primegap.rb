=begin 

input = three integers

output = an array of two integers

rules = given three integers, the first being the difference
        between two prime numbers, find the FIRST pair of 
        PRIME numbers that have a difference of the first
        input in a range between second input and third input.

algorithm =
- populate an empty array named primes using select
  - for each number in range between second and third input,
    - select it if it is prime?
- define prime? method and pass it parameter num
  - for each number in range 2..num
  - return true if num is 1 or 2
  - if num % number != 0, return true
- for each number in primes + index,
  - return [number, primes[idx + 1]] if primes[idx + 1] - number == g


=end

# def gap(g, m, n)
#   primes = (m..n).select { |num| prime?(num) }
#   primes.each_with_index { |num, idx| return [num, primes[idx + 1]] if num + g == primes[idx + 1]}
#   return nil
# end

def prime?(int)
  return true if int == 1 || int == 2

  (2...int).each do |number| 
    return false if int % number == 0
  end

  true
end

def no_primes?(first, last)
  ((first + 1)...last).each { |num| return false if prime?(num)}
  return true
end

def gap(g, m, n)
  counter = m

  until counter > n
    if prime?(counter)
      second = counter + g 
      return [counter, second] if prime?(second) && no_primes?(counter, second)
    end

    counter += 1
  end

  nil
end

p gap(2,100,110)
p prime?(2)
p gap(6,100,110)