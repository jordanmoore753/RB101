=begin 

input = integer

output = integer

rules = a featured number is the following:
        - an odd number
        - a multiple of 7
        - whose digits occur exactly ONCE each

explained = 49 is a featured number (odd, multiple of 7, digits appear once each)
            98 is not a featured number (not odd)
            97 is not (not a multiple of 7)
            133 is not (digit 3 appears twice)

algorithm =
1.



=end

def featured(number)
  arr = []

  0.upto(number) { |counter| counter == 0 ? arr << 7 : arr << arr[counter - 1] + 14 }

  arr = strip_array(arr)
  arr = insert_input(number, arr)
  same = arr.index(number) + 1
  same = arr.index(number) + 2 if arr[same] == number 
  arr[same]
end

def strip_array(numbers)
  numbers.each do |num|
    numbers.delete(num) if !same_digits?(num)
  end

  numbers
end

def insert_input(num, array)
  array << num
  array.sort!
end

def same_digits?(num)
  new_num = num.digits.reverse
  check_digits = []

  new_num.each do |digit|
    check_digits << digit 
    return false if check_digits.count(digit) > 1
  end

  return true
end

p featured(12) 
p featured(20)
p featured(21)
p featured(997) 

