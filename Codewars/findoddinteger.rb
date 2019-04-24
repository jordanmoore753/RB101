=begin 

input = given array 

output = integer

rules = find integer that appears an odd number
        of times
        there will always be one that does


=end

def find_it(seq)
  seq.each { |num| return num if seq.count(num).odd? }
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

