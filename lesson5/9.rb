=begin 

input = an array with nested arrays

output = same array, but with nested arrays (sub arrays) listed
in descending order alpha or numeric

=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.each do |sub|
	sub.sort! do |a, b|
		b <=> a
	end
end

p arr