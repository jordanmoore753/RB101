def word_sizes(str)
  hsh = Hash.new(0)
  str.split(' ').map do |word|
    hsh[word.length] += 1
  end
  hsh.sort.to_h

end

word_sizes("What's up doc?")