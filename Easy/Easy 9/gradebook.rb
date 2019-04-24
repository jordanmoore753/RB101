=begin

input = three numbers to the method as arguments

output = the average of all three turned
into a letter score

quals

ex: get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
=end

def get_grade(num1, num2, num3)
    average = (num1 + num2 + num3) / 3

    if average >= 90
        return 'A'
    elsif average.between?(80, 89)
        return 'B'
    elsif average.between?(70, 79)
        return 'C'
    elsif average.between?(60, 69)
        return 'D'
    else
        return 'F'
    end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"