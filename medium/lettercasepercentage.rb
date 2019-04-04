# input = a string argument passed into method

# output = a hash

# rules = count the total amount of characters in
# string, then calc the lowercase, uppercase, and nonword
# characters.

# convert the totals into percentages and make them the
# values of the hash 

# ex =


  # str.each_char do |char|
  #   if /[[:lower:]]/.match(char)
  #     lowers += 1
  #   elsif /[[:upper:]]/.match(char)
  #     uppers += 1
  #   else
  #     neither += 1
  #   end
  # end

  # lowers = ((lowers.to_f / divisor.to_f) * 100).to_i

# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

def letter_percentages(str)
  char_totals = { lowercase: 0, uppercase: 0, neither: 0 }
  divisor = str.length

  str.each_char do |char|
    if /[[:lower:]]/.match(char)
      char_totals[:lowercase] += 1
    elsif /[[:upper:]]/.match(char)
      char_totals[:uppercase] += 1
    else
      char_totals[:neither] += 1
    end
  end

  char_totals.map do |key, value|
    value = ((value.to_f / divisor.to_f) * 100).to_f
      if value.to_s[-1] == '0'
        char_totals[key] = value.round
      else
        char_totals[key] = value
      end
  end

  char_totals
end

p letter_percentages('AbCd +Ef')
p letter_percentages('abCdef 123')
p letter_percentages('123')


