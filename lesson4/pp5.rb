=begin 

input = an array of strings (names)

output = the index of the first name that starts
with "Be"

=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index_of = flintstones.each_with_index do |value, index|
	puts index if value.start_with?('Be')
end

p index_of