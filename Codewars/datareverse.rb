=begin 

input = array

output = array

rules = split the array into an array with elements
        of 8 length
        then, reverse the order of the elements
        1, 2, 3, 4 => 4, 3, 2, 1

algorithm =
- counter to 0, results empty array
- str.length / 8 times do
  - results append str[counter..counter + 8 - 1]
  - counter += 8
- results.reverse

=end

def data_reverse(data)
  counter = -1
  results = []

  data.join.gsub!(' ', '')

  (data.size/8).times do 
    results << data[(counter - 7)..counter]
    counter -= 8
  end

  results.flatten.size
end

def data_reverse(da)
  da.each_slice(8).to_a.reverse.flatten
end

p data_reverse([1,1,1,1,1,1,1,1, 0,0,0,0,0,0,0,0, 0,0,0,0,1,1,1,1, 1,0,1,0,1,0,1,0])