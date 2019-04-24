=begin 

input = an array of strings (names)

output = amended array where names are shortened to 
three characters

=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |value|
	value[0, 3]
end

p flintstones




