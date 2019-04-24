=begin 

input = string of numeric characters with (- or +)

output = an integer of those numeric characters
from input but with the appropriate sign (-, +)

rules: no to_i, integer(), or any other 
conversion methods

=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
    sign = ''

    if str[0] == '-'
        sign = 'negative'
        str.slice!(0)
    elsif str[0] == '+'
        sign = 'positive'
        str.slice!(0)
    end

    digits = str.chars.map {|char| DIGITS[char] }

    value = 0
    digits.each { |digit| value = 10 * value + digit }


        if sign == 'negative'
            -(value)    
        elsif sign == 'positive'
            value   
        else
            value
        end
end

p string_to_integer('-570')