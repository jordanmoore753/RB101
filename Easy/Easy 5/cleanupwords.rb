def cleanup(str)
  new_str = ''
  characters = str.chars
  previous_result = ''

  characters.map do |char|
    if /[[:alpha:]]/.match(char)
      new_str << char
      previous_result = char
    elsif /[^a-zA-z]/.match(char) && /[^a-zA-z]/.match(previous_result)
      previous_result = char
    else
      new_str << ' '
      previous_result = char
    end
  end
  new_str     
end

cleanup("---what's my +*& line?")