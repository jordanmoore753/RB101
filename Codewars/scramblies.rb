=begin 

input = two string arguments

output = a boolean

rules = if a portion of str1 characters
  can be rearranged to match str2
  then true boolean output

  if not, false

ex = 

scramble('rkqodlw', 'world') ==> True
scramble('cedewaraaossoqqyt', 'codewars') ==> True
scramble('katas', 'steak') ==> False

=end

def scramble(str1, str2)
  compare_arr = str1.chars.sort
  new_str = str2.chars.sort

  new_str.each do |char|
    if !compare_arr.include?(char)
      return false
    elsif compare_arr.include?(char)
      compare_arr.slice!(compare_arr.index(char))
    end
  end
  true
end

# BEST PRACTICE
def scramble(str1, str2)
  str2.chars.all? { |x| str2.count(x) <= str1.count(x)}
end

p scramble('rkqodlw', 'worldd')
p scramble('cedewaraaossoqqyt', 'codewars')
p scramble('katas', 'steak')