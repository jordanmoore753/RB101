def print_in_box(str)
  middle_line = ''
  border_line = ''
  size_rule = str.size + 2

  size_rule.times do 
    middle_line << ' '
    border_line << '-'
  end

  puts "+#{border_line}+"
  puts "|#{middle_line}|"
  puts "| #{str} |"
  puts "|#{middle_line}|"
  puts "+#{border_line}+"
end

print_in_box("To boldly go where no man has gone before.")