=begin 

input = integer
output = boolean
rules = determine if its a valid 16 digit cc number
        if odd number of digits, start doubling at 1 index
        if even number, start doubling at 0 index
        every other number is doubled!

        if one of the resulting numbers  is > 9, 
          replace with the sum of its own digits
        add all the digits together, then modulo by 10.
        If it is 0, its a valid card.

algorithm =
- split int into array of digits then reverse
counter = 0
- check if odd or even size,
  odd, then
    iterate over digits array
    if counter.odd? then double the number
  even, then
    if counter.zero or even, double the number

- iterate over digits array,
  if any digit is over 9,
    call digits on the number, then set number = reduce(:+)

then reduce the whole array and modulo by 10.
if its 0, true


=end

def validate(n)
  int_arr = n.digits.reverse

  if int_arr.size.odd?
    int_arr.map!.with_index { |num, idx| idx.odd? ? num * 2 : num }
  else
    int_arr.map!.with_index { |num, idx| idx.even? || idx.zero? ? num * 2 : num }
  end

  int_arr.map! { |num| num > 9 ? num.digits.reduce(:+) : num }.reduce(:+) % 10 == 0
end

p validate(2121)
p validate(123)
p validate(1)
p validate(1714)
p validate(12345)
p validate(891)