def word_cap(string)
  new_array = []

  string.split(' ').map do |word|
    new_array << word.capitalize
  end

  new_array.join(' ')

end

a = "four score and seven"

word_cap(a)