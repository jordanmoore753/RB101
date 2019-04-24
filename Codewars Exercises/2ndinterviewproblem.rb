# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.

=begin 

input = string

output = string

rules = return the higest scoring word as a string
        letters get points based on their position
        a = 1, b =2


=end

def alphabet_score(str)
  letters = []
  counter = 1

  ('a'..'z').each do |char| 
    letters << [char, counter]
    counter += 1
  end

  letters = letters.to_h

  new_arr = str.split(' ')
  scores = Array.new(new_arr.size, 0)
  value = 0

  new_arr.each_with_index do |word, idx|
    word.each_char do |character|
      value += letters[character]
    end
    scores[idx] += value
    value = 0
  end

  new_arr[scores.index(scores.max)]

end

p alphabet_score('man i need a taxi up to ubud') == 'taxi'
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'