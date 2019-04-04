=begin 

input = a string argument passed into method

output = a boolean 

rules = there are spelling blocks, two sided, that
contain two letters

'B:O'

you can only use one block for one letter. There
is only one of each block, no repeating.

If you can spell the string argument input with
the spelling blocks, none repeated,
then the output is true.

ex = 

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

I need some sort of data structure to hold
the amount '1' for each spelling block and subsequent
letter. A hash would work and so would an array.

Try: ['H', 'U'] => 1, then if hsh[key]

hsh[key] = 0

=end

def block_word?(str)
  blocks = { 'B' => 'O', 'X' => 'K', 'D' => 'Q',
             'C' => 'P', 'N' => 'A', 'G' => 'T',
             'R' => 'E', 'F' => 'S', 'J' => 'W',
             'H' => 'U', 'V' => 'I', 'L' => 'Y',
             'Z' => 'M', 'O' => 'B', 'K' => 'X',
             'Q' => 'D', 'P' => 'C', 'A' => 'N',
             'T' => 'G', 'E' => 'R', 'S' => 'F',
             'W' => 'J', 'U' => 'H', 'I' => 'V', 
             'Y' => 'L', 'M' => 'Z' }
  counter = 0

  str.upcase!
  str = str.chars

  str.map do |char|
    p char, blocks.key(char)
    if char == blocks.key(char)
      return false
    end
  end
  true
end

p block_word?('BUTCH')



