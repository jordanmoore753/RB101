=begin 

input = integer passed as argument to method

output = integer that represents the amount of times that
the binary number '1' is represented in the 
input integer

rules = the integer output represents binary representation,
non-negative numbers only, increment output integer by 1 for
each time the binary number 1 is represented by the number

ex = 

[1234] = 10011010010 == 5 times that 1 is represented

convert integer to array, digits, then convert each to binary,
then see which ones match 1 which is '1' in binary

def count_bits(n)
  n.to_s(2).count "1"
end

WOW! You can covert to binary just by to_s!
=end

def count_bits(n)
  sum = ''
  remainder = 0
  
  until n == 0
    n, remainder = n.divmod(2)
    sum << remainder.to_s
  end

  sum.reverse.count('1')
end

p count_bits()

