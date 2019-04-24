=begin

input = method that takes integers as arguments
first is a count, second is the integer
you want multiples of 
output = the amount of multiples of the 2nd
integer is == to the count number

quals

ex: sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
=end

def sequence(num1, num2)
    multiples_array = []
    num1.times do 
        if multiples_array.empty?
            multiples_array << num2
        else
            multiples_array << multiples_array.last + num2
        end
    end
    multiples_array
end

sequence(5, 1) 
sequence(4, -7)
sequence(3, 0)
sequence(0, 1000000) 