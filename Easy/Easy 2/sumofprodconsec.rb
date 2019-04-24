#input: an integer greater than 0
#output: user choice= mult or add, all integers leading up to input int

def prompt(message)
    puts ">> #{message}"
end

integers_of_input = []

def find_integers(number, array)
    counter = 1
    prompt('Finding integers...')
    until counter > number
        array << counter
        counter += 1
    end
end

def display_sum(array, usr_input)
    sum = array.reduce(:+)
    puts "The sum of the integers between 1 and #{usr_input} is #{sum}."
end

def display_product(array, usr_input)
    product = array.reduce(:*)
    puts "The product of the integers between 1 and #{usr_input} is #{product}."
end

prompt('Please enter an integer greater than 0:')
usr_input = gets.chomp.to_i
prompt("Enter 's' to compute the sum, 'p' to compute the product.")
usr_choice = gets.chomp.to_s

find_integers(usr_input, integers_of_input)

case usr_choice
    when 's' then display_sum(integers_of_input, usr_input)
    when 'p' then display_product(integers_of_input, usr_input)
    end