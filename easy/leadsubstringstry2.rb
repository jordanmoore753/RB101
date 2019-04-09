def add_exclamation_upcase(str)
  str += '!'
  p str.object_id
  str.upcase!
end

test_str = 'This is great'

puts add_exclamation_upcase(test_str)

puts test_str

p 3 % Math.sqrt(3).round