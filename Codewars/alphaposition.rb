=begin 

input = string

output = string

rules = for each alphabetic character return its
        position in the alphabet
        do not return any non alphabetic chars

algorithm =

- create a hash with the key as letter, value as position
- iterate over string characters
- if char is a letter, add to new_str

=end

def alphabet_position(string)
  new_str = []
  position_num, letters = 1, []
  
  ('a'..'z').each do |char|
    letters << [char, position_num]
    position_num += 1
  end

  position_num = 1

  ('A'..'Z').each do |char|
    letters << [char, position_num]
    position_num += 1
  end

  letters = letters.to_h

  string.each_char { |char| new_str << letters[char] if /[[:alpha:]]/.match(char) }

  new_str.join(' ')
end

p alphabet_pos("The sunset sets at twelve o' clock.")


