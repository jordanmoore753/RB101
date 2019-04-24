=begin 

input = a string

output = a string

rules = each letter of a word scores points
        based on its position in the alphabet
        a = 1, b = 2
        return the highest scoring word as 
        a string
        if two words score the same, return the word
        that appears earliest in the ORIGINAL string
        all letters are lowercase
        all inputs valid

data_structures =
- store the letter key:value pairs in a hash called letters
  - letter will be key, position in alphabet will be value
- store the highest word in local var called `highest_word`

algorithm =
- initialize empty hash called letters
- initialize and assign local var `counter` to 1
- initialize and assign local var `current_word` to 0
- initialize and assign local var `highest_word_total to 0
- initialize and assign local var `highest_word` to ''
- for each letter in (a..z)
  - add key (letter) : value (counter) pair to letters
  - increment counter by 1
- split string into separate elements
- for each element in string,
  - for each character in element,
    add value of letters[key] to current_word
  - if current_word is greater than highest_word_total,
    - assign highest_word to point at same value as element
  - return highest_word

=end

def high(x)
  current_word_total, highest_word_total = 0, 0
  highest_word = ''

  letters = create_hsh

  x.split.each do |element|
    element.each_char { |char| current_word_total += letters[char] }
    
    if current_word_total > highest_word_total
      highest_word_total = current_word_total
      highest_word = element
    end

    current_word_total = 0
  end

  highest_word
end

def create_hsh
  letters, counter = {}, 1

  ('a'..'z').each do |character|
    letters[character] = counter
    counter += 1
  end 

  letters
end

p high('man i need a taxi up to ubud')
p high('what time are we climbing up the volcano')
p high('take me to semynak')
p high('aaa b')