def display_sq_ft_meters(length, width)
    sq_meter = (length * width).round(2)
    sq_ft = (sq_meter * 10.7639).round(2)
    puts "The area of the room is #{sq_meter} square meters (#{sq_ft} square feet)."
end

puts 'Enter the length of the room in meters:'
user_length = gets.chomp.to_f
puts 'Enter the width of the room in meters:'
user_width = gets.chomp.to_f

display_sq_ft_meters(user_length, user_width)