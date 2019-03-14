=begin 

input = a hash with key as names, values as age

output = add all of the ages from the hash

=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_age = 0

ages.map do |_, value|
	total_age += value 
end

p total_age

# or

p ages.values.reduce(:+)





