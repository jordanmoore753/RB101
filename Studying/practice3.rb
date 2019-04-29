# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort_by! { |hsh| hsh.values_at(:published) }
# p books

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# results = []

# munsters.each do |key, value|
#   results << key if value['gender'] == 'male'
#   puts "#{key} is a #{value['age']}-year-old (#{value['gender']})."
# end

# #(Name) is a (age)-year-old (male or female).
# p results
 
=begin 

input = none
output = string
rules = output string with 35 characters,
        randomly generated letters and numbers
        in sections of 8-4-4-4-12
        between each section is a '-'

algorithm =
- new string innitialize
- possible letters_numbers add all lowercase and numbers
- 8.times do 
  new_str += poss_char.sample
- add '-'
- 15.times do 
  new_str += poss_char sample
  counter += 1
  if counter == 4
    add '-'
    counter = 0
- 12.times do
  new_str

  output str
=end

def uuid
  poss_letters = []
  ('a'..'z').each { |l| poss_letters << l }
  ('1'..'9').each { |n| poss_letters << n}
 
  new_str, counter = '', 0

  8.times do |count| 
    new_str += poss_letters.sample
    new_str += '-' if count == 7
  end

  12.times do 
    new_str += poss_letters.sample
    counter += 1

    if counter == 4
      counter = 0
      new_str += '-'
    end
  end

  12.times { new_str += poss_letters.sample }
  
  new_str
end

p uuid

=begin 

Create a method that generates an array of all substrings of a given string.

input = string

output = array

rules = generate an array of all substrings of a string input

algorithm =
- initialize results variable
- word var, set to 0
- counter var, set to 0
- str_arr = string.chars
- until word > str_arr.size
    until counter > str_arr.size
      results append str_arr[word..counter]
      counter += 1
    end

    word += 1
    counter = word

=end

def all_substrings(str)
  results = []
  word, counter = 0, 0
  str_arr = str.chars 

  until word == str_arr.size
    until counter == str_arr.size
      results << str[word..counter]
      counter += 1
    end

    word += 1
    counter = word
  end

  results
end

p all_substrings('apple')

=begin 

input = integer
output = string
rules = print the number in expanded form
        only numbers besides 0 will get expanded

algorithm =
- initialize zeros variable set to int.to_s.length
- initialize results array
- counter var set to 0
int_arr = int.to_s.split('')
- until zeros < 0
  append int_arr[0] + '0' * zeros to results if num != '0'

join(' + ')

=end

def expanded(int)
  zeros = int.to_s.length - 1
  results = []
  int_str = int.to_s.split('')

  int_str.each do |char|
    results << char + '0' * zeros if char != '0'
    zeros -= 1
  end

  results.join(' + ')
end

p expanded(12)
