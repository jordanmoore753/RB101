=begin 
input = string of words

output = boolean of whether or not string
is palindrome (same backwards as forwards)

directions: case, space and punctuation matters

=end

def real_palindrome?(str)
        new_str = str.downcase.gsub(/\s/, "").gsub(/[[:punct:]]/, "")
        new_str.reverse == str.downcase.gsub(/\s/, "").gsub(/[[:punct:]]/, "")
end

a = ['m','a','d','a','m']
b = '123ab321'
c = "madam i'm adam"
d = '356653'

p real_palindrome?(b)