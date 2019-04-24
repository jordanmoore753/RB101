=begin 

input = an array with five elements

output = a single integer

rules = six sided die, 5 dice
        one roll
        array elements represent value of each die
        three of a number = number * 100
        except three ones, which is 1000
        one 1 is 100, one 5 is 50
        

ideas = remove groups of threes but slice the 1 or 5
        add up regular numbers after the group of three
        or single 1 or 5

ex =

 5 1 3 4 1   50 + 2 * 100 = 250
 1 1 1 3 1   1000 + 100 = 1100
 2 4 4 5 4   400 + 50 = 450

=end

def score(dice)
  total = []

  if dice.count()
end

score([5, 1, 3, 4, 1])
score([1, 1, 1, 3, 1])
score([2, 4, 4, 5, 4])