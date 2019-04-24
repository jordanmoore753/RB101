# MY FIX

def neutralize(sentence)
  words = sentence.split(' ')
  results = []

  words.each do |word|
    results << word if !negative?(word)
  end

  results.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

# puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

def neutralize(sentence)
  words = sentence.split(' ')
  words.each_with_index do |word, idx|
    words.delete(word) if negative?(word) # When you delete an element of the collection you're iterating over, it will tend to mess up.
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# EXPLAINED 

# In this case, when we deleted the first 'dull' from the string, it shifted the string forward one index.
# This caused it to miss all of the other bad words in the string.