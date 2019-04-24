=begin 

input: integer year

output: boolean of whether or not year is 
leap year

clarify: to be leap year it must be:

evenly divisible by 4, but not divisible
by 100. If it's also divisible by 100,
it must also be divisible by 400, too.

=end

def leap_year?(year)
    if year % 4 == 0 && year % 100 == 0
        if year % 400 == 0
            true
        else 
            false
        end
    elsif year % 4 == 0
        true
    else
        false
    end
end

a = 2000

p leap_year?(a)