=begin 
input = string of words

output = boolean of whether or not string
is palindrome (same backwards as forwards)

directions: case, space and punctuation matters

=end

def palindrome?(str)
        str == str.reverse
end

a = ['m','a','d','a','m']
b = 'madam'
c = "madam i'm adam"
d = '356653'

p palindrome?(b)
p palindrome?(a)
p palindrome?(c)
p palindrome?(d)

#it already does account for arrays