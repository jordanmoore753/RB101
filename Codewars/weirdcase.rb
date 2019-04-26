=begin 

input = a string

output = 'string'

rules = return a string with all even index characters
        uppercased (includes 0 as even)

algorithm =
- results array as empty
- iterate over string split with each index
- if index is 0 or even, add it with upcase to results

=end

def weirdcase(string)
  results = []
  counter = 0

  string.split.each_with_index do |word, idx|
    word.each_char do |letter| 
      if counter.zero? || counter.even? 
        results << letter.upcase 
      else
        results << letter.downcase 
      end

      counter += 1
    end

    results << ' ' if idx < string.split.size - 1
    counter = 0
  end

  results.join('')
end

p weirdcase('This is a test')