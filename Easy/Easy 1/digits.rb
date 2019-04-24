a = 12345
b = -2

def list_of_digits(x)
    if x <= 0
        puts 'Error. Input must be larger than 0.'
    else
        x.to_s.chars.map {|x| x.to_i }
    end
end

p list_of_digits(a)