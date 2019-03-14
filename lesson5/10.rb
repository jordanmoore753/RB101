=begin 

input = an array with three hashes inside of it

output = use map method to return a new array
identical in structure but with each
value incremented by 1

new_a = arr.map do |hash|
	hash.merge(hash) {|k, v| v + 1 }	
end

=end

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_a = arr.map do |hash|
	hash.merge(hash) {|k, v| v + 1 }	
end


# or...

incremented_hash = {}

arr.map do |has|
	has.each do |k, v|
		incremented_hash[k] = v + 1
	end
end

incremented_hash

