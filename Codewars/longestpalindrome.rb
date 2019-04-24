=begin 

input = string

output = integer

rules = find length of longest substring that is a 
        palindrome (same in reverse)


algorithm =
- define method palindrome?(str)
  if str == str.reverse then true
- define method substrings_of(string)
  - starting at 0..counter
  - append the substring in that range to results array
  - return results
- longest_substring method definition
  - for each word in string,
    - invoke method substrings_of, append results of it to results
  - find and return the max of the results array


=end

def longest_palindrome(string) 
  results = []

  string.split.each do |word|
    results += substrings_of(word)
  end

  results.reject! { |word| !palindrome?(word) }
  biggest = results.max_by { |word| word.length }
  p biggest
  return biggest.length
end

def palindrome?(str)
  return false if str == ''
  str == str.reverse
end

def substrings_of(str)
  results = []
  word, counter = 0, 0
  
  until word > str.length
    (str.length - counter).times do 
      results << str[word..counter]
      counter += 1
    end

    word += 1
    counter = word 
  end

  results
end

# p substrings_of('abcde is my planet')
p palindrome?('')
p longest_palindrome("baa")
p longest_palindrome('abcdedcba is my plane')