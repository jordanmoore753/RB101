=begin 

input = string argument passed into method

output = integer

rules = find the number of vowels in a string
        a e i o u
        lowercase only
        no spaces dont worry about em

ex = 

=end

def getCount(inputStr)
  inputStr.count("\\aeiou")
end

p getCount("abracadabra")

