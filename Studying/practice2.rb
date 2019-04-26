=begin 

Directions

Determine how many words in a given array are palindromes. 
Do not use the #reverse method. Case of the character DOES matter.
Return the number of elements that are palindromes.

'Abcba' => false
'AbcbA' => true
['AbcbA', 'mouse', 'MouoM'] => 2

p palindrome_count(['Mom', 'MoM', 'Gimli', 'gimig', 'Gim_miG']) == 3
p palindrome_count(['Dirtrid', 'OreO', 'DaDa', 'eevee', 'EeveE']) == 2

#####

input = array

output = integer

algorithm =
- define palindrome? method takes a string
  - inside define results arr
  - counter set to -1
  - until arr.size == str.length
    - counter -= 1 after appending str[counter] to results
  join

  string == results.join

- select the elements that run true for palindrome?
- then run count on the return value

=end

def palindrome?(string)
  results = ''
  counter = -1

  until results.size == string.length
    results += string[counter]
    counter -= 1
  end

  string == results
end

def palindrome_count(arr)
  arr.select { |word| palindrome?(word) }.count
end

p palindrome_count(['Mom', 'MoM', 'Gimli', 'gimig', 'Gim_miG']) == 3
p palindrome_count(['Dirtrid', 'OreO', 'DaDa', 'eevee', 'EeveE']) == 2