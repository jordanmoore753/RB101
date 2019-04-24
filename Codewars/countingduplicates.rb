=begin 

input = string

output = integer

rules = determine the count of how case insensitive
        alpha and numeric characters that occur more
        than once in the string

algorithm =
- initialize results variable set to ''
- invoke downcase on input string
- for each character in string (split),
  - if count of character > 1, add char to counter
    - unless char is in results already
=end

def duplicate_count(text)
  results = ''

  text.downcase.split('').each do |letter|
    results += letter if text.downcase.count(letter) > 1 && !results.include?(letter)
  end

  results.length
end

p duplicate_count('')
p duplicate_count("abcdeaa")