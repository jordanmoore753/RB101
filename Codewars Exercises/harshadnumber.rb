=begin 

input = an integer

output = boolean, integer, and array (depending on method)

rules = harshad number is a number are POSITIVE numbers
        that can be divided evenly by the SUM of their digits

        10, because 1 + 0 = 1 and 10 % 1 == 0
        27, 2 + 7 = 9 and 27 % 9 == 0

        1 counts as true

        the first method, valid? should return a boolean
        of whether the input is a harshad

        the second method, get next, calculates the next harshad
        number based on input

        the third method, get_serie, calculates harshad numbers
        leading up to one parameter, and has an optional starting
        number to begin at (second parameter)

algorithm =
- define valid? method with input parameter
  - initialize local variable equal to digits of input
  - add the digits together
  - input % digit_sum == 0 ? 

- define get_next with parameter number
  - new_num = number
  - invoke loop method
    - new_num += 1
    - break if isvalid?(new_num) 
  - return the new_num var

- define get_serie method with two parameters, count, start
  - start has default value of 0
  - (start..count).select the numbers that isvalid?(num)

=end

def self.is_valid(number)
  return false if number.zero?
  digs = number.digits 
  digs = digs.reduce(:+)
  number % digs == 0
end

def self.get_next(number)
  result = number

  loop do  
    result += 1
    break if is_valid(result)
  end

  result
end

def self.get_serie(count, start = 0)
  results = []

  until results.size == count
    start += 1
    results << start if is_valid(start)
  end
  
  results
end

p get_serie(10)
p get_serie(20)
p get_serie(10, 1000)
