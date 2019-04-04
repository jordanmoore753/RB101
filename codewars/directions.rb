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

def dirReduc(arr)
  direction_counts = { 'NORTH' => 0, 'SOUTH' => 0, 'EAST' => 0, 'WEST' => 0 }
  new_directions = []
  north, south = 0, 0
  east, west = 0, 0

  arr.each do |value|
    direction_counts[value] += 1 if direction_counts[value]
  end

  if direction_counts['NORTH'] != direction_counts['SOUTH'] 
     if direction_counts['NORTH'] > direction_counts['SOUTH'] 
       direction_counts['NORTH'] = direction_counts['NORTH'] - direction_counts['SOUTH'] 
       direction_counts['SOUTH'] = 0
     else
       direction_counts['SOUTH'] = direction_counts['SOUTH'] - direction_counts['NORTH'] 
       direction_counts['NORTH'] = 0
     end
  else
    direction_counts['NORTH'], direction_counts['SOUTH'] = 0, 0
  end

  if direction_counts['WEST'] != direction_counts['EAST'] 
     if direction_counts['WEST'] > direction_counts['EAST'] 
       direction_counts['WEST'] = direction_counts['WEST'] - direction_counts['EAST'] 
       direction_counts['EAST'] = 0
     else
       direction_counts['EAST'] = direction_counts['EAST'] - direction_counts['WEST'] 
       direction_counts['WEST'] = 0
     end
  else
    direction_counts['WEST'], direction_counts['EAST'] = 0, 0
  end
  
  arr.each do |value|
    if direction_counts[value] > 0
      new_directions << value
      direction_counts[value] -= 1
    end
  end
  new_directions.flatten
end

p dirReduc(["NORTH", "WEST", "SOUTH", "EAST"])


