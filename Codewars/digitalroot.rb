=begin 

input = an integer

output = an integer

rules = compute the digital root of the input
        digital root is the recursive sum of all digits in a number
        942
        9 + 4 + 2
        15 
        1 + 5
        6

algorithm =
- return the n if n has a length of 1
- until n length is single digit
- turn the integer into array of numbers
- add them up
- repeat

=end

def digital_root(n)
  return n if n.digits.length == 1
  digital_root(n.digits.reduce(:+))
end

p digital_root(16)
