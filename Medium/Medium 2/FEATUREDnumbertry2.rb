=begin 

input = integer

output = integer

rules = a featured number means the following:
        - odd
        - multiple of 7
        - digits appear only once each
        if input == featured number, pick the next one

explained =

algorithm =
- define method that strips featured_num array of numbers that
have a digit repeated
- define method that puts the input number into featured_num array
- invoke until loop
  - until featured_num.last != input && featured_num.last > input && featured_num.last digits occur once each

- digits method
  - invoke digits on integer, reverse it
  - for each number in integer, 
  - if number.count > 1, false
    otherwise, true

=end

def featured(num)
  featured_numbers = []

  loop do
    featured_numbers.size < 1 ? featured_numbers << 7 : featured_numbers << featured_numbers.last + 14 

    break if featured_numbers.last > num && one_digit?(featured_numbers.last)
  end

  featured_numbers.last
end

def one_digit?(number)
  digs = number.digits.reverse

  digs.each { |num| return false if digs.count(num) > 1 }

  true
end

p featured(997)



