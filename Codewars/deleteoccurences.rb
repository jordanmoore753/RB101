=begin 

input = an array and integer

output = an array

rules = based on the integer input, do not
        return any one element of array in
        return array more than (integer) times

        ex: [1, 1, 1, 1], 2 => [1, 1]

algorithm =
- initialize results array as empty array
- populate a hash with elements from arr by
  - for element add to hash[element] => 0 unless element already there
- for each element in arr
  - add 1 to hsh[element]
  results << element if hsh[element] <= integer


=end

def delete_nth(order, max_e)
  results = []
  occurences = {}

  order.each { |element| occurences[element] = 0 unless occurences[element] }

  order.each do |number|
    occurences[number] += 1
    results << number if occurences[number] <= max_e
  end

  results
end

p delete_nth([20,37,20,21], 1)