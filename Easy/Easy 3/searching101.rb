=begin 
input = 6 integers by user
output = the 6th number and it's truth value for if it appears in array of first 5

=end

def prompt(message)
    puts "==> #{message}"
end

def display_number(usr_input, array)
    if array.include?(usr_input)
        p "The number #{usr_input} is in #{array}"
    else
        p "The number #{usr_input} isn't in #{array}"
    end
end

numbers = []
counter = 0

until counter >= 6
    prompt('Enter a number:')
    number = gets.chomp.to_i
    numbers.size == 5 ? (counter += 1) : (numbers << number)
    counter += 1
end

display_number(number, numbers)



