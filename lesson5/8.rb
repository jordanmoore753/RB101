=begin 

input = hash with array as value

output = all the vowels from the string values

=end




hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = 'aeiou'



hsh.each do |key, value|
	new_values = value.join('').chars
	new_values.each do |letter|
		if letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
			p letter
		end
	end		
end

# alternatively...

hsh.each do |_, value|
	value.each do |str|
		str.chars.each do |char|
			puts char if vowels.include?(char)
		end
	end
end








