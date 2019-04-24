def staggered_case(string)
  new_array = string.chars.each_with_index do |letter, index|
    if index.odd?
      letter.downcase!
    elsif index == 0 || index.even?
      letter.upcase!
    end
  end

new_array.join('')
end

a ='ignore 77 the 444 numbers'

staggered_case(a)