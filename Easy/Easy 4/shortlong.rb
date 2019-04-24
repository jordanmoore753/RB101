=begin 

input: two strings

output: shorter string, longer string, shorter 
string all concatenating in that order.


=end

def short_long_short(str1, str2)
    arr = []
    str3 = ''
    if str1.length > str2.length
        arr += [str2, str1, str2]
        arr.join('')
    else
        arr += [str1, str2, str1]
        arr.join('')
    end

end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh" 
p short_long_short('', 'xyz') == "xyz"