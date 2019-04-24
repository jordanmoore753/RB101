#input: range of numbers 1-99
#output: print all odd numbers from 1-99, separate lines
#directions: 

numbers =*(1..99)

numbers.each { |x| puts x if x.odd? }

# or

value = 1
while value <= 99
    puts value
    value += 2
end