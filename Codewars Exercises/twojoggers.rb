=begin 

input = two integers

output = an array containing two integers

rules = two runners are running. One is on a short loop, another on long loop.
        They run the same pace.
        Figure out how many laps each has to do in order to meet up again,
          i.e, be at the same point (equal).

explained =

I think this question is asking to find the least common multiple.
The least common multiple is the number of laps they will be equal at.
One will have more laps to run, however, since the loops aren't the
same length. 
The array contains how many laps each needs to run to reach
the least common multiple (the spot where they meet -- equal numbers)

algorithm =
- initialize new array named results and assign to empty array
- initialize variable named short_counter and assign to first input, long_counter to 2nd input
- invoke loop method
- for each iteration of the loop,
  - add first input to itself
  - add one to counter
  - if input % second input = 0, stop iterating
  - append counter to results
  - set counter to 0
- second loop
  - repeat for second input

=end

def nbr_of_laps(x, y)
  return [1, 1] if x == y
  results = []

  results << compute_laps(x, y)
  results << compute_laps(y, x)
end

def compute_laps(num, num2)
  counter = 1
  curr_jogger = num 

  loop do 
    curr_jogger += num
    counter += 1
    break if curr_jogger % num2 == 0
  end

  counter  
end

p nbr_of_laps(4, 4)

# Two Joggers

# Description

# Bob and Charles are meeting for their weekly jogging tour. 
# They both start at the same spot called "Start" and they each run a different lap, which may (or may not) vary in length. 
# Since they know each other for a long time already, they both run at the exact same speed.

# Your job is to complete the function: nbrOfLaps(x, y). 
# Given the length of the laps for Bob and Charles, 
# find the number of laps that each jogger has to complete before they meet each other again, at the same time, at the start.

# The function takes two arguments:

# The length of Bob's lap (larger than 0)
# The length of Charles' lap (larger than 0)

# The function should return an array.

# The first number is the number of laps that Bob has to run
# The second number is the number of laps that Charles has to run

# EXAMPLES

# nbr_of_laps(5, 3) # returns [3, 5]
# nbr_of_laps(4, 6); # returns [3, 2]
