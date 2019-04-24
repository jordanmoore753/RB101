def crunch(str)
  new_str = ''
  result = ''

  str.each_char do |char|
    if char != result
      new_str << char
      result = char
    end
  end
  new_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''