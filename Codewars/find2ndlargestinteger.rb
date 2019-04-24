=begin

input = an array argument passed into a method

output = a single integer or nil 

rules = the integer must be the 2nd largest integer
in the array argument, if there is no 2nd largest integer
then it must return nil

ex = 

find_2nd_largest([1,1,1,1,1]) => nil 
find_2nd_largest([1,2,3]) => 2
find_2nd_largest([1,'a','2',3,3,4,5,'b'])

=end

def find_2nd_largest(arr)
  no_string_array = []
  arr.each do |value|
    no_string_array << value if value.is_a? Integer
  end
  no_string_array.sort!.uniq!
  if no_string_array.empty? || no_string_array.size <= 1
    return nil
  else
    return no_string_array[-2]
  end
end

p find_2nd_largest([1,'a','2',3,3,4,5,'b'])

