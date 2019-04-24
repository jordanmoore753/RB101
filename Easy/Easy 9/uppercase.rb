def uppercase?(str)
    acceptable_chars = []
    ('A'..'Z').each { |letter| acceptable_chars << letter }
    ('0'..'9').each { |digit| acceptable_chars << digit }
    ('!'..'.').each { |digit| acceptable_chars << digit }

    mod_str = str.split(' ').join('').chars
    mod_str.all? do |value|
        acceptable_chars.include?(value)
    end
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true