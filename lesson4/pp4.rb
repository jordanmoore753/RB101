=begin 

input = a hash containing keys as names, and ages as values

output = the minimum age (lowest value) of the hash

=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

min_age = ages.values.min_by {|x| x }

p min_age