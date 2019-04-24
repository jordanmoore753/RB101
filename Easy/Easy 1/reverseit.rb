
def reverse_sentence(str)
  counter = -1
  results = []

  until results.size == str.split.size
    results << str.split[counter]
    counter -= 1
  end

  results.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'