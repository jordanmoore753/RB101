=begin 

input = a string passed into method

output = an integer

rules = for the string input
        determine how many case-insensitive
          alphabetic characters and numeric digits
          occur more than once in the string
          CASE DOES NOT MATTER

examples =

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2

//

I'll just need to make the characters all 
the same case because it's case insensitive

then have an array of the used characters
to avoid repeating an addition to the results

And I need a running total while iterating
over the string to tally the results

Then just gotta have the variable for
results at the end to evaluate for a
boolean

=end 

def duplicate_count(str)
  results = 0
  used_chars, new_str = [], str.upcase

  new_str.each_char do |char|
    if new_str.count(char) > 1 && !used_chars.include?(char)
      results += 1 
      used_chars << char
    end
  end

  results
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2


