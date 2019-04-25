=begin 

input = two arrays

output = an array

rules = for each element (word) in first array,
        return each of those elements that  appears
        as a substring of the elements in the second
        array

algorithm =
- substrings method
  - results array empty array
  - for each char..counter in word,
    - append result to result array
- compare_arrays method
  - results is array = return value of substrings(2nd arr)
  - select on first array,
    for each element in first array,
      if its true that results includes element,
        return it to the select method
=end

def compare_arrays(arr1, arr2)
  result = arr2.map { |word| get_substrings(word) }.flatten
  arr1.select { |word| result.include?(word) } 
end

def get_substrings(str)
  results = []
  counter, idx = 0, 0

  until counter > str.length - 1

    until idx > str.length - 1
      results << str[counter..idx]
      idx += 1
    end

    counter += 1
    idx = counter
  end

  results
end

# p get_substrings('armstrong')
p compare_arrays(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"])