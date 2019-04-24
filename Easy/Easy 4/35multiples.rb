=begin 

input: integer 

output: multiples of 3 and 5 that lie between
1 and input integer, computes the sum of
all integers that meet criteria


=end

def multisum(number)
    arr = []
    counter = 1
    until counter > number
        if counter % 3 == 0 || counter % 5 == 0
            arr << counter
            counter += 1
        else
            counter += 1
        end
    end
    arr.reduce(:+)
end

a = 3
b = 5
multisum(3)