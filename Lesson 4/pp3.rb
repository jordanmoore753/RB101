=begin 

input = a hash containing keys of names and values of ages

output = a hash with everyone older than 100 years old

=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.map do |key, value|
	ages.delete(key) if value >= 100
end

#

ages.keep_if {|_, value| value < 100 }




