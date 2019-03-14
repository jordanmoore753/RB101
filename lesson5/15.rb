=begin 

input = an array with several hashes 

output = an array that only contains the hashes with even integers

quals =

ex: 

=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
new_arr = []

new_arr = arr.select do |sub|
	sub.all? do |_, value|
		value.all? {|v| v % 2 == 0 }
	end
end

p new_arr