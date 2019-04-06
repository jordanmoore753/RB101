
LETTERS = { 'A' => 'a', 'B' => 'b', 'C' => 'c', 'D' => 'd',
            'E' => 'e', 'F' => 'f', 'G' => 'g', 'H' => 'h',
            'I' => 'i', 'J' => 'j', 'K' => 'k', 'L' => 'l',
            'M' => 'm', 'N' => 'n', 'O' => 'o', 'P' => 'p',
            'Q' => 'q', 'R' => 'r', 'S' => 's', 'T' => 't',
            'U' => 'u', 'V' => 'v', 'W' => 'w', 'X' => 'x',
            'Y' => 'y', 'Z' => 'z' }

def wave(str)

  results = []
  counter, str_arr = 0, str.chars
  new_str = ''

  str.length.times do
    if /\s/.match(str.chars[counter])
      counter += 1
      next
    end

    str = str.downcase
    str[counter] = LETTERS.key(str[counter])
    new_str = str
    results << new_str
    counter += 1
  end
  results
end

# Best practice

def wave(str)
  result = []
  chars = str.downcase.chars
  chars.each_with_index do |char, idx|
    next if char == ' '
    result << str[0..idx] + char.upcase + str[idx+1..-1]
  end
  result


end

p wave('two words')

