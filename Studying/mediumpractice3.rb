=begin 

input = string

output = string

rules = return the same string but with any
        words that represent numbers outputted
        as their numerical equivalent
        one => 1, etc,.

algorithm =
- populate a hash with the word of the number as key,
 value as number
 - for each word split in string,
  - if hsh.key?(word) 
    - invoke gsub! and replace word with the value of hsh[word]

=end

def word_to_digit(str)
  hsh = {'zero' => '0', 'one' => '1', 'two' => '2',
         'three' => '3', 'four' => '4', 'five' => '5',
         'six' => '6', 'seven' => '7', 'eight' => '8',
         'nine' => '9' }

  str.split(' ').map do |word|
    del_punct = word.delete!('.') if word.include?('.')
    str.gsub!(word, hsh[word]) if hsh.include?(word)
    word += '.' if del_punct == '.'
  end
  
 str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')

x = 'patrick3'
x = x.split('')
x.delete_at(-1)
p x.join

c = [1,2,3]
c.delete_at(1)
p c