=begin 

input: array of numbers

output: an array with same number of 
elements as input, each element is the
sum of the previous element plus itself


=end

def running_total(arr)
    sum_of_previous = arr.each_with_object([]) do |num, accu|
                        previous = accu.last || 0
                        accu << previous += num 
                    end
                    sum_of_previous 
end
a = [14,11,7,15,20]
p running_total(a)