#input: one input, a string for name
#output: a greeting of 'Hello #{name}' or if ! ALL CAPS greeting with differeent string
#directions: 

def check_name(name)
    if name.end_with?('!') 
       name = name.chop 
       puts "HELLO #{name}. WHY ARE WE SCREAMING?"
    else
       puts "Hello #{name}."
    end
end

puts 'What is your name?'
usr_name = gets.chomp.to_s

check_name(usr_name)