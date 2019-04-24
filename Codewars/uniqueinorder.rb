=begin 

input = an array or string

output = an array

rules = do not let an identical character be printed
        twice in a row
        print out the string or array
        as an array with each element not repeated
        next to oneself

algorithm =
- invoke select on iterable

=end

def unique_in_order(iterable)
  return return_arr return_arr(iterable.split('')) if iterable.is_a? String 

  return_arr(iterable)
end

def return_arr(arr)
  arr.select.with_index { |letter, idx| letter if idx == 0 || arr[idx - 1] != letter }
end

p unique_in_order('AAAABBBCCDAABBB')
p unique_in_order('AA')