=begin 

input = a hash with a one layer hash within, contain
name key with value of hash, inner hash has two key
age, gender, with two values.

output = modify the hash so that each member of the
hash has an additional age_group key
that is based on the age key-value pair.

ex: { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

new_hash = munsters.each do |name, details|
	case details['age']
	when (0..17) then details['age_group'] = 'kid'
	when (18..64) then details['age_group'] = 'adult'
	else details['age_group'] = 'senior'
	end
end

p new_hash