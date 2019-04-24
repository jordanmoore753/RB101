=begin 

input = an array of subarrays with integers

output = sorted array with same subarrays but ordered according
to the numeric value of the odd integers they contain

quals = 

ex = output should be : [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

=end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
new_arr = []

new_arr = arr.sort_by do |sub_arr|
	sub_arr.select do |num|
		num.odd?
	end

end

p new_arr