def swapcase(string)
  new_array = string.chars.each do |letter|
    if letter =~ (/[[:upper:]]/)
      letter.downcase!
    elsif letter =~ (/[[:lower:]]/)
      letter.upcase!
    end
  end

new_array.join('')
end

a ='Tonight on XYZ-TV'

p swapcase(a)