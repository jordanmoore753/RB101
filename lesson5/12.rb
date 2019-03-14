=begin 

input = an array containing sub-arrays, a couple of which have hashes

output = a hash similar in structure to previous array
but with first item as key and second item as value of
key/value pair

quals = no to_h

# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
new_hash = {}

arr.each do |sub|
	new_hash[sub[0]] = sub[1]
end

p new_hash


