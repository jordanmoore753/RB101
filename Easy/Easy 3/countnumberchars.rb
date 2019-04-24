=begin 
input = string of word or words

output = string detailing the amount of characters
in input

=end

def count_chars(input)
    arr = input.gsub(/\s+/, "").chars
    puts "There are #{arr.count} characters in #{input}."
end

puts 'Please write word or multiple words: '
usr_input = "walk, don't run"

count_chars(usr_input)