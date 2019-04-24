def word_sizes(str)
  hsh = Hash.new(0)
  str.split(' ').each do |word|
    word.slice!(/[^a-z]/i)
    hsh[word.length] += 1
  end
  hsh.sort.to_h
end

p word_sizes("Hey diddle diddle, the cat and the fiddle!")