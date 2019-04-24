def ascii_value(str)
  total = 0
  str.each_char { |char| total += char.ord }
  total
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0