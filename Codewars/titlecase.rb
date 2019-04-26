=begin 

input = two strings

output = one string

rules = titlecase the string
        first string is the one to be modified
        second string contains exceptions
        if the word is in second string
          and first it must be capitalized
          else, lowercase
        everything else should be capitalized

algorithm =
- results array empty array
- exceptions array = second string split and downcase
- for each string in input 1,
  - if string.downcase == exceptions[0] 
    - append string.capitalize to resutls
  - if string.downcase is included in exceptoins
    - append string.downcase to results
  - else
    - append string.capitalzie to results

=end

def title_case(title, minor_words)
  return title if title == ''

  results = []
  exceptions = minor_words.split.map { |word| word.downcase }
  
  title.split.each_with_index do |string, idx|
    if idx == 0 && exceptions.include?(string.downcase)
      results << string.capitalize 
    elsif exceptions.include?(string.downcase)
      results << string.downcase
    else
      results << string.capitalize
    end
  end

  results.join(' ')
end

p title_case('a clash of KINGS', 'a an the of')
p title_case('THE WIND IN THE WILLOWS', 'The In')