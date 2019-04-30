=begin 

input = string

output = string

rules = convert camel case string to kebab
        case
          all lowercase letters
          connected by dashes
          no numbers

algorithm=
- iterate over the string split
  - for each letter,
    if it is in array of numbers 0..9
    do not add to new results array
- iterate over array
  - if letter != letter.downcase
    - set the current letter equal to '-' + letter.downcase
join


=end

def kebabize(str)
  numbers, counter = ('0'..'9').to_a, 0
  results = []

    until counter > str.length
      if numbers.include?(str[counter])
        str.gsub!(str[counter], '') 
        next
      end
      
      counter += 1
    end

  counter = 0
  
  str.split('').each_with_index do |letter, idx|
    letter != letter.downcase && idx != 0 ? results << '-' + letter.downcase : results << letter.downcase
  end

  # str.split('').each_with_index do |letter, idx|
  #   next if numbers.include?(letter) || 
  #   if letter == letter.downcase
  #     results << letter 
  #   elsif idx == 0
  #     results << letter.downcase
  #   else
  #     results << '-' + letter.downcase unless idx == 0
  #   end
  # end

  results.join
end

p kebabize("g23rxb")
p kebabize("ZMaVto")
p kebabize('myCamelCasedString')
p kebabize('fGw3Ds')