=begin 

input = none

output = method produces a 32 character string of hexadecimal
characters, randomly, with a 8-4-4-4-12 pattern.

ex: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

=end

def uuid_create
	chars = []
	(0..9).each {|number| chars << number.to_s }
	('a'..'f').each {|letter| chars << letter }

	uuid = ''
	partition = [8, 4, 4, 4, 12]
	partition.each_with_index() do |part, index|
		part.times do 
			uuid += chars.sample
		end
		uuid += '-' if index < partition.size - 1
	end
	p uuid
end

uuid_create






