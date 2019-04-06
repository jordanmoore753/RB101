=begin 

input = two array arguments

output = a boolean

rules = if all of the elements represented
        in array 1 (integers) are also
        represented as their squares
        in the second array, then the boolean true
        is returned

        may be empty so return false if so

ex =

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

true

=end

def comp(a, b)
  return true if a == [] && b == []
  return false if a == nil || b == nil
  a.each do |number|
    return false if !b.include?(number**2)
    return false if a.count(number) != b.count(number**2)
  end
  return true
end

# BEST PRACTICE

def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map {|v| v ** 2} == array2.sort
end

p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])