=begin 

input = two arguments, an array of strings, and one string to compare against

output = the list of strings that match the characters
from the first argument

rules = must be an array output
        words must contain all same letters

ex = 

anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

if you can break down each string into an array, then
  sort by letter, I can check
  the sub arrays of the next array to see if 
  any match the exact sort method
  of the first argument

=end

def anagrams(word, words)
  compare_characters_first = word.split('').sort
  matching_strings = []

  words.each do |subarray|
    if subarray.split('').sort == compare_characters_first
      matching_strings << subarray
    end
  end

  matching_strings
end

=begin BEST PRACTICE

def anagrams(word, words)
  words.select { |w| w.chars.sort == word.chars.sort }
end

=end
anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])
