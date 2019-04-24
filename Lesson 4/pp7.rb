=begin 

input = a string attached to variable

output = hash that expresses the frequency of each
character in the string

ex: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

=end

statement = "The Flintstones Rock"

modified_state = statement.gsub(/\s+/, '').split('')

modified_state = modified_state.each_with_object({}) do |value, hash|
	if hash.include?(value)
		hash[value] += 1
	else
		hash[value] = 1
	end
end

p modified_state

#or

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
	letter_frequency = statement.scan(letter).count
	result[letter] = letter_frequency if letter_frequency > 0
end

result