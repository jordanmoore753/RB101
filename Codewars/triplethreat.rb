=begin 

input = two integers

output = integer

rules = if there are 3 of the same number repeated
        in the first number in a row and
        2 of the same number next to each other
        in the second integer, return 1
        otherwise, 0

algorithm =
- integer down to digits and reverse
- counter to 0
- results []
- for each integer in int digits
  - if counter is  -2 from the length of the array, break
  if current counter and counter + 1, counter + 2 are all the same,
  - append 1 to results and break
- for each integer in int digits
  if counter is -1 from the end of array break
    - if current counter and counter + 1 are the same
      append 1 to results and break
  - if results == 1, 1, return 1
    else 0
=end

# def triple_double(num1,num2)
#   arr1, arr2 = num1.digits.reverse, num2.digits.reverse
#   counter = 0
#   results = []

#   arr1.each do |num|
#     break if counter == arr1.length - 2
#     if arr1[counter..(counter + 2)] == [num, num, num]
#       results << num
#     end

#     counter += 1
#   end
 
#   counter = 0

#   arr2.each do |num|
   
#     break if counter == arr2.length 
#     if arr2[counter..(counter + 1)] == [num, num] && results.include?(num)
#       results << num
#       break
#     end

#     counter += 1
#   end

#   results.size >= 2 ? 1 : 0
# end

def triple_double(num1, num2)
  num1 = num1.to_s
  num2 = num2.to_s
  10.times do |i|
    if num1.include?(i.to_s*3) && num2.include?(i.to_s*2)
      return 1
    end
  end

  return 0
end

# p triple_double(451999277, 41177722899)
# p triple_double(1112, 122)
p triple_double(5118850520391110258131045188843, 8889131817)