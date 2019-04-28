=begin 

input = 3 integers

output = array with 2 integers

rules = return the first two primes
        with a gap between of them the same
        as the first integer input
        second integer input determines where
        to start the search
        third integer input determines where to end the
        search

algorithm =
- define prime? method
- 2 up to not including number,
  if number % num is 0 then it is false
- return true otherwise

get_step method
- fill an array with prime numbers upto the third integer
- select on the numbers second int...third int
  - if prime? true then add to primes array
- counter = 0
- iterate over the array
  - if number[counter] + 2 == number[counter + 1] then return [number, arr[counter + 1]]

def step(g, m, n)
  counter, element = 0, 1
  primes = (m..n).select { |num| prime?(num) }

  p primes
  until counter == primes.size
    until element > primes.size
      return [primes[counter], primes[element]] if primes[counter] + g == primes[element]
      element += 1
    end

    counter += 1
    element = counter + 1
  end

  return []

end

=end


def step(g, m, n) 

  until m + g > n
    return [m, (m + g)] if prime?(m + g) && prime?(m)
    m += 1
  end

  return nil
end

def prime?(int)
  return false if int <= 1
  (2...int).each { |num| return false if int % num == 0 }
  true
end


p step(4,100,110)
p step(6,100,110)