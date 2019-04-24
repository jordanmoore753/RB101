=begin 

input = an integer

output = an integer

rules = find number of times the digits
        of input must be multiplied in order
        to get a single digit

ex = 

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number

algorithm:

- change integer into digit array
- invoke loop with until check (digit is one number)
- inside loop, multiply digits, re-assign value
- return number of times

=end

def persistence(int)
  digs, counter = int.digits.reverse, 0

  until digs.size == 1
    digs = digs.reduce(:*).digits.reverse
    counter += 1
  end

  return counter
end

p persistence(39) == 3
p persistence(77) == 4
p persistence(1) == 0
p persistence(432) == 2
p persistence(92_929) == 3



