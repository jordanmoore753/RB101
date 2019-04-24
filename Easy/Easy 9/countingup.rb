=begin

input = a number passed as argument to method

output = return an array of all integers
leading up to the argument integer

quals

ex: sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

=end

def sequence(number)
    counter = 0
    integer_array = []
    return 'error!' if number <= 0
    number.times do 
        counter += 1
        integer_array << counter
    end
    integer_array
end


p sequence(5)
p sequence(3)
p sequence(1) 