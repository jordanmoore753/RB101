#input: range of numbers 1-99
#output: print all even numbers from 1-99, separate lines
#directions: 

numbers =*(1..99)

numbers.each { |x| puts x if x.even? }

# or

1.upto(99) { |x| puts x if x.even? }