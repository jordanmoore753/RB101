=begin 

input = string

output = boolean

rules = spelling blocks have two letters, one on each
        side
        if one of the letters is used, the other
        one cannot be used 
        evaluate whether the string can be spelled
        with spelling blocks or not

algorithm =
- initialize one array, subarray for each pair
- for each letter in string,
- if the letter is included in the array flattened,
  - delete the subarray containing those elements
  - if it is not included, return false
- true


=end

def block_word?(str)
  arr = [['B', 'O'], ['X', 'K'], ['D', 'Q'],
         ['C', 'P'], ['N', 'A'], ['G', 'T'],
         ['R', 'E'], ['F', 'S'], ['J', 'W'],
         ['H', 'U'], ['V', 'I'], ['L', 'Y'],
         ['Z', 'M']]

  str.upcase.each_char do |char|
    if arr.flatten.include?(char)
      idx_del = arr.flatten.index(char)
      arr.delete_at(idx_del)
    else
      return false
    end
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true