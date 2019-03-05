# 1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers 
# This will print out 1, 2, 2, 3 on separate lines.
# uniq is NOT mutating without the "!" symbol after it's call.

# 2
=begin

! # a "!" can be part of a method name, a signifier of mutation-ability,
  # or it stands for "not". For example: 3 != 2 is "3 is not equal to 2."

!= # would be used in conditionals.
!username # means that username is the opposite truth value 
          #  that it originally had
words.uniq! # this means that the method #uniq! is mutating the caller
!! # means that the "nots" are cancelled out 
? # is used in conditional expressions. If put before a character,
  # it will be print out the string. Example: ?F => "F"
? : # this is the ternary shorthand operator for if/else
? # can also be the valid end of a method name
=end

# 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent') # we want to mutate the caller
p advice

# 4

numbers = [1, 2, 3, 4, 5]
p numbers.delete_at(1) # this is deleting 2, since its index is 1
p numbers.delete(1) # this is deleting 1, since we're selecting a value, not index
# they also mutate the caller without the !

# 5

42.between?(10, 100)

# or 

(10..100).cover?(42)

# 6

famous_words = "seven years ago..."

def word_add(words)
  "Four score and " << words
end

# or

def word_add_2(words)
  "Four score and ".concat(words)
end

# 7

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
p eval(how_deep) # output is 42.

# 8

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

# 9 

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.delete_if {|key, value| value != 2 }

flintstones.to_a.flatten!

# or

flintstones.assoc("Barney")

