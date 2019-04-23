# Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.
#
# Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
#
# If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

=begin 

input = a string

output = a string

rules = sort the words in the string by the number
        in them in ascending order
        - numbers 1-9 ONLY, no 0!
        - return empty string if string is empty

algorithm =
- initialize results array as empty array
- initialize counter variable and assign to 1
- split the str and for each word in str
  - if str includes counter.to_s
    - add word to results array
    - increment counter by 1


=end

def order(str)
  return '' if str == ''
  results = []
  counter = 1

  until results.size == str.split(' ').size
    str.split(' ').each do |word|
      word.each_char do |char|
        if char == counter.to_s
          results << word
          counter += 1
        end
      end
    end
  end

  results.join(' ')
end

p order("is2 Thi1s T4est 3a") #== "Thi1s is2 3a T4est"
p order("4of Fo1r pe6ople g3ood th5e the2") #== "Fo1r the2 g3ood 4of th5e pe6ople"
p order("") #== ""




