=begin 

input = array of strings, integer

output = string

rules = return the first longest string of consecutive
        elements from array depending on integer input
        if 2, find two longest consecutive strings

algorithm =
- set counter variable to 0
- set longest_str = ''
- for each element in array,
  - return longest_str if current_element + integer == nil
  - if the sum of current element to current element + integer
    is greater than longest_str.length
    - longest_str = current element..current element + integer
    counter += 1


=end

def longest_consec(strarr, k)
  return strarr.max_by { |str| str.length } if k == 1
  return '' if strarr.empty? || k <= 0

  word = 0
  longest_str = ''

  strarr.each do |ele|
    counter = (word + k) - 1

    return longest_str if strarr[counter] == nil

    current_word = strarr[word..counter]
    longest_str = current_word.reduce(:+) if current_word.reduce(:+).length > longest_str.length

    word += 1
    current_word = ''
  end

end

x = ["zone", "abigail", "theta"]

p x[0..1].reduce(:+)
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "abigail"], 2)
p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)
