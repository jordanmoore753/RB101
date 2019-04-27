=begin 

input = array

output= array of two integers

rules = 2 beggars, taking turns going down
        the length of the array, how much
        will they both collect?
        [1, 2, 3, 4, 5] => [9, 6]


algorithm =
- initialize results array as empty
- append a zero for n times
- for each num in array
  - if zero or even index add to the first 
    else add to the second
    - return [first, second]
  
=end

def beggars(values, n)
  results = []
  n.times { results << 0 }
  counter = 0

  values.each do |num|
    counter = 0 if counter > n - 1
    results[counter] += num
    counter += 1
  end

  results
end

p beggars([1,2,3,4,5], 6)
p beggars([1,2,3,4,5],2)
p beggars([1,2,3,4,5],3)