=begin
	
input= a string with a variable

output= a method that capitalizes each word in a
string

=end
words = 'the flintstones rock'

def titleize(str)
	new_str = str.split (' ')
	new_str.map { |value| value.capitalize! }.join(' ')

end

p titleize(words)