=begin 

input = a string

output = an array

rules = for each character in the string
        create a subarray that contains the
        character and the count of it as
        index 1
        then sort the subarrays, biggest
        to smallest

ex =
ordered_count("abracadabra") == 
[['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]

=end

def ordered_count(string)
  arr_of_str = string.chars
  results = {}
  
  arr_of_str.each do |char|
    if results[char]
      results[char] += 1
    else
      results[char] = 1
    end
  end

  results.to_a
end

p ordered_count('abracadabra')

