=begin 
input = two integers by user

output = sum, quotient, product, and
difference of both integers

=end

def prompt(message)
    puts "==> #{message}"
end

def display_calc(first, second)
    sum = first + second 
    diff = first - second 
    prod = first * second 
    quot = first / second 
    modu = first % second 
    sq = first ** second 
    puts "#{first} + #{second} = #{sum}"
    puts "#{first} - #{second} = #{diff}"
    puts "#{first} * #{second} = #{prod}"
    puts "#{first} / #{second} = #{quot}"
    puts "#{first} % #{second} = #{modu}"
    puts "#{first} ** #{second} = #{sq}"
end

prompt('Enter the first number:')
first_input = gets.chomp.to_i
prompt('Enter the second number:')
second_input = gets.chomp.to_i

display_calc(first_input, second_input)