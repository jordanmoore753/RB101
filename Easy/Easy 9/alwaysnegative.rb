=begin

input = a number passed as argument to method

output = if it's a positive number, make
    it negative. negative or 0, return the 
    number again

quals

ex: negative(5) == -5
negative(-3) == -3
negative(0) == 0 

=end

def negative(number)
    return -number if number > 0
    return number
end

p negative(5)
p negative(-3)
p negative(0)