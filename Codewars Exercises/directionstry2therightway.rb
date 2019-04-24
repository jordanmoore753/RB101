=begin 

input = given an array of strings passed as argument

output = an array with only valid strings

rules = only return the strings that aren't cancelled out
by the one directly next to it. like north, south, both would
be cancelled out.

ex = 

["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
=> ['West']

I think I can check for the number of each direction
in the array, initialized as separate local variables.
Then, if two are equal to each other, I will not
add that direction to the new array.

=end

OPPOSITES = { 'NORTH' => 'SOUTH', 'SOUTH' => 'NORTH', 'EAST' => 'WEST', 'WEST' => 'EAST' }.freeze

def dirReduc(arr)
  new_directions = []
  iterate_times = arr.size

  iterate_times.times do 
    arr.map.with_index do |value, idx|
      if arr[idx + 1] == OPPOSITES[value]
        arr.delete_at(idx + 1)
        arr.delete_at(idx)
      end
    end
  end
  arr
end

# BEST PRACTICE

def dirReduc(arr)
  stack = [] # new array
  arr.each do |dir|
    OPPOSITES[dir] == stack.last ? stack.pop : stack.push(dir)
  end
  stack

end

p dirReduc(["NORTH", "WEST", "SOUTH", "EAST"])

# this solution is beautiful. They're avoiding deleting while iterating
# adding the new direction to an array. They check to be sure
# that it doesn't violate the rules by checking if the LAST
# element added to the stack matches the opposite of the current
# element.
