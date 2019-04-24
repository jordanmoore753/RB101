=begin 

input = none

output = longest string and number of words in string

rules = read text from a text file
        find longest sentence
        a sentence ends with a . ! ?
        display the sentence and its size

algorithm =
- read the text file and assign the value of its text to a local var named text
- split the string into substrings by period, exclamation, and question marks
- for each substring in string,
- split the substring by whitespace and count the number of elements
- if larger than the previous size, re-assign the variable to point at that substring

=end

def text_reader
  text = File.read('pg84.txt') 
  text_sentences = text.split(/\!|\.|\?/)
  text_sentences.map! { |substring| substring.split(' ') }
  answer = text_sentences.max_by { |substring| substring.size }
  p answer.size, answer.join(' ')
end

text_reader

