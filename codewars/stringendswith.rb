=begin

input = two parameters: string parameter passed to method (string)
and another string parameter

output = a boolean representing whether or not the second
argument is the last character of the first argument

rules = must have two arguments, must be boolean

ex = solution('abc', 'bc') # returns true
solution('abc', 'd') # returns false

=end

def solution?(str, ending_char)
  str.end_with?(ending_char) ? true : false
end

p solution?('abc', 'bc')
p solution?('abc', 'd')

