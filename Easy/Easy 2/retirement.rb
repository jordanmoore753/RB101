#input: two integers: current age, retirement age
#output: retirement year, amount of years left till then
#directions: 

CURRENT_YEAR = 2019

def display_retirement_date(age, retire_age)
    years_left = retire_age - age
    retirement_year = CURRENT_YEAR + years_left
    puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
    puts "You have only #{years_left} years of work to go!"
end

puts 'What is your age?'
usr_age = gets.chomp.to_i
puts 'At what age would you like to retire?'
usr_desired_year = gets.chomp.to_i

display_retirement_date(usr_age, usr_desired_year)