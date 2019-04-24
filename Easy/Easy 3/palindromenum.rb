def num_palindrome?(num)
    p num == num.reverse
end

def convert_num(str)
    mod = str.to_s.chars.join('')
    num_palindrome?(mod)
end


convert_num(22)