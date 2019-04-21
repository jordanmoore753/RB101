

# input = a string

# output = a string

# rules = given a string of words, return the highest
#         scoring word.
#         each letter of a word has a point:
#         a = 1, b = 2..z = 26.
#         If two words score the same, return
#         the word that appears first in the original string.
#         ALL LETTERS ARE LOWERCASE.

# algorithm =

# - initialize letters variable and assign to empty hash
# - intialize counter variable, set to 1
# - for each letter in (a..z)
#   - append letter as key and counter as value
# - initialize variable named previous_word_score and set to 0
# - initialize variable named current_char_score set to 0
# - initialize variable named highest_word assign to ''
# - split the string by whitespace into elements
# - for each word in string,
#   - for each char in word,
#     - add char_score from letter hash to current_char
#   - if current_char_score > previous_word_score
#     highest_word = word 
#     set previous_word_score to current_char_score
#     set current_char_score to 0
#     else just set current_char_score to 0

LETTERS = ('a'..'z').zip(1..26).to_h

def high(str)
  highest_word_score = 0
  highest_word = ''

  str.split.each do |word|
    current_word_score = calc_word_score(word)
    if current_word_score > highest_word_score
      highest_word = word 
      highest_word_score = current_word_score
    end
  end

  highest_word
end

def calc_word_score(str_word)
  current_word_score = 0

  str_word.each_char { |char| current_word_score += LETTERS[char] }

  current_word_score
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aa b') == 'aa'