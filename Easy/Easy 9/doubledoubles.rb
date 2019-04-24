=begin 

input = method with one argument: a number

output = if double number (even number where left digits are same as right)
    then leave same, else * 2

quals:

ex: twice(37) == 74
twice(44) == 44

=end

def twice(number)
    str_num = number.to_s
    middle = str_num.size / 2
    left_side = middle.zero? ? '' : str_num[0..middle - 1] # -1 because middle is 1 number greater than the index value
    right_side = str_num[middle..-1] # ..-1 because -1 indicates the last value of the array, the right-most.


    return number if left_side == right_side
    return number * 2

end

twice(37) 
twice(44) 
twice(334433) 
twice(444) 
twice(107) 
twice(103103) 
twice(3333) 
twice(7676) 
twice(123_456_789_123_456_789) 
twice(5) 