=begin 

input = a string

output = a string

rules = each word  in the string will contain a number (consecutive only)
        position each word by assuming the number in the word should 
        be the index number for the entire word
        empty str => empty str
        only 1-9

algorithm - 
- initialize new array named results
- initialize counter variable as 1
- until results is the same size as string split into array
- for each element in string split
  - for each char in str
    - if char is equal to counter.to_s, append word to results
=end

def order(words)
  results = []
  counter = 1

  until results.size == words.split.size
    words.split.each do |word|
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


p order("is2 Thi1s T4est 3a")
