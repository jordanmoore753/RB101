=begin 

input = a string

output = the same string but with the first letter and last letter
of each word switched

ex: swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'


=end

def swap(str)
  add_arr = []
  str.split(' ').map do |word|
    word = word.chars
    word[0], word[-1] = word[-1], word[0]
    add_arr << word.join('')
  end
  p add_arr.join(' ')
end

swap('a')