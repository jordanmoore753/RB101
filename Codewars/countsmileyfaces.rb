=begin 

input = array

output = integer

rules = determine how many valid smiley faces there
        are in the array
        valid options are: :) :D ;-D :~)

algorithm =
- valid variable initialize as 0
- initialize valid_options as [:) :D ;-D :~)]
- for each element in arr,
  if valid options includes element,
    increment valid by 1

=end

def count_smileys(arr)
  valid_count = 0

  arr.each do |element|
    valid_count += 1 if smile_test?(element)
  end

  valid_count
end

def smile_test?(str)
  str.delete!('-')
  str.delete!('~')
  valid_eyes = [':', ';']
  valid_mouths = [')', 'D']

  return false if !valid_eyes.include?(str[0]) || !valid_mouths.include?(str[1])

  true
end

p count_smileys([":D",":~)",";~D",":)"]) == 4
p count_smileys([";", ")", ";*", ":$", "8-D"]) == 0
p count_smileys([":)",":(",":D",":O",":;"]) == 2
p count_smileys([";]", ":[", ";*", ":$", ";-D"]) == 1
