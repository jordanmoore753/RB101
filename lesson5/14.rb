=begin 

input = a hash with one layer of hash and an array inside of that hash

output = an array with the color of fruit and size of vegetables. 
colors should be capitalized, size uppercase.

ex : [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_array = hsh.map do |key, value|
	if value[:type] == 'fruit'
		value[:colors].map(&:capitalize).join(',').split(',')
	elsif value[:type] == 'vegetable'
		value[:size].upcase
	end
end

p new_array