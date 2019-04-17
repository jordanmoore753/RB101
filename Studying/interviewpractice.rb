=begin 

input = an array of letters, characters

output = the letter that's missing from the alphabet

rules = all letters are the same case
        array size will be 2 or greater
        always a valid array

examples = [a, b, c, d, f] => e

algorithm =
- initialize array of all lowercase letters 
- initialize array of all uppercase letters
- for each char in (a..z) and (A..Z)
- add char to lowercase or uppercase
- find index of the first and last element of input
- subtract the range of first and last index and the actual range of input

=end

def alpha(arr)
  ((arr.first..arr.last).to_a - arr).first
end

p alpha(['a', 'b', 'c', 'd', 'f'])


# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

# input = an integer
# output = an integer

# rules = x will be an integer 1 and 10000, a prime number is a natural number
# greater than 1 that has no positive divisors other than 1 and itself.
# there is a range of numbers from 1 to the input integer, 
# select the numbers that are odd but not prime

# prime number method 

# for each integer leading up to the original input,
# test every number leading up to the integer by performing
# the operation modulo (%) by the counter (increasing by 1 each loop)
# if the return value of the operation is 0, return true

# main method

# initialize the local variable counter and assign it to integer 1
# initialize an array to contain the numbers that are odd but not prime
# invoke a while loop and set the break condition as being greater than the
# input
# for each integer represented by counter, 
# invoke prime_number? method and pass the counter as an argument
# if the return value of prime_number? method is true
# add the counter to the array initialized on line 2
# increment counter by 2 to avoid even numbers
# continue the loop

def odd_not_prime(int)
  (1..int).select { |num| num.odd? && not_prime_number?(num) }.size
end

def not_prime_number?(number)
  return true if number == 1
  
  (2...number).each { |count| return true if number % count == 0 }
  
  false
end

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20

p (1...4).to_a
