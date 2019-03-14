=begin 

input = an array with strings

output = a hash where names in strings are keys
and values are position in array


=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
new_flint = {}
flintstones.each_with_index() do |name, index|
				new_flint[name] = index
			end

			p new_flint






