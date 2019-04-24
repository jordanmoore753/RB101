=begin 

input = an array containing 4 sub arrays of integers

output = an array with the same structure but 
containing only numbers that are multiples
of three. use only select or reject methods!


=end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |sub|
	sub.select {|val| val % 3 == 0 }
end

# or...

new_arr = arr.map do |sub|
	sub.reject {|val| val % 3 != 0 }
end


