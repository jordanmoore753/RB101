munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

new_array = []

munsters.map do |key, value|
	if value['gender'] == 'male'
		new_array << value['age']
	end 
end

total_male_age = new_array.inject(:+)
p total_male_age


#alternatively...

total_male_age = 0
munsters.each_value do |details|
	total_male_age += details['age'] if details['gender'] == 'male'
end

p total_male_age