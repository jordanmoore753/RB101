# given total of n coins
# return the number of complete staircase rows that
# can be made with that n

# n = 3
# *
# * * two complete rows

#arrange_coins(1)
# *
#arrange_coins(15) #= 5

# *
# * *
# * * *
# * * * *
# * * * * *

#arrange_coins(14) #= 4

# *
# * *
# * * *
# * * * *    # last complete row
# * * * 

=begin 

input = integer

output = integer

rules = no need to print out rows
        return the number of rows that are possible
        given that each row increases by 1
        upto the input integer
        if the last row ends up as more than the input integer
        return the counter ( -1 is up to how you do the problem)

algorithm =
- initialize counter variable set to 1
  - counter is amount of turns, times that counter is incremented by 1
- initialize results array
- invoke loop
  - append current value of counter to results
  - if results.reduce(:+) + (counter + 1) > input integer
    - then return counter

=end

def arrange_coins(int)
  counter = 0
  results = []

  loop do 
    counter += 1
    results << counter
    break if (results.reduce(:+) + counter + 1) > int
  end

  counter
end

p arrange_coins(15) == 5
p arrange_coins(8) == 3
p arrange_coins(200) == 19
p arrange_coins(131) == 15