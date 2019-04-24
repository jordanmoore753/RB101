=begin 

input = a string

output = a string

rules = each word  in the string will contain a number (consecutive only)
        position each word by assuming the number in the word should 
        be the index number for the entire word
        empty str => empty str

algorithm - 

- 
=end

def order(words)
  nums = []
  ('1'..'9').each {|num| nums << num}

  results = []
  counter = 0

  p words.split(' ').sort_by &nums.method(:index)

end


p order("is2 Thi1s T4est 3a")
