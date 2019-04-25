=begin 

input = string

output = array

rules = return a list of all substrings that are palindromes
        do not use reverse method!
        case does matter

algorithm = 
- define method palindrome?
  - evaluate the expression:
    str == flip_string(str)
- define method flip_string(str)
  - assign counter variable to -1
  - until results array size == str length
    - results append str[counter]
    decrement counter by 1
  return joined results array

=end

def substrings(str)
  results = []
  counter, start_letter = 0, 0

  until start_letter > str.length
    until counter == str.length
      results << str[start_letter..counter]
      counter += 1
    end

    start_letter += 1
    counter = start_letter
  end

  results
end

def flip_string(str)
  counter = -1
  results = []

  until results.size == str.length
    results << str[counter]
    counter -= 1
  end
  
  results.join
end

def palindromes(string)
  substrings_str = substrings(string)
  substrings_str.select { |sentence| sentence if sentence == flip_string(sentence) && sentence.length > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

x = ('a'..'z').to_a
vowels = ['a', 'e', 'i', 'o', 'u']
x -= vowels
p x
p 'a'.include?('a')