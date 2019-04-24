=begin 

input = an array of numbers

output = the duplicate value within the argument
array

ex: find_dup([1,5,3,1]) == 1

=end

def find_dup(arr)
  new_arr = []
  arr.each do |value|
    if new_arr.include?(value)
      return value
    else
      new_arr << value
    end
  end
end

p find_dup([1, 5, 3, 1]) 