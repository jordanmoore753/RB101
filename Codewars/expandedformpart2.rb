=begin 

input = float number  

output = string

rules = return a float number in expanded form
        for each index past the period, add a zero

algorithm =
- zeros = 0
- convert number to an array of strings (keep period) as new array
- results = []
- results << str_Arr.delete_at(0)
- for each char in str arr,
  if char != '0' && char != '.'
    results << "char / '1' + '0' * zeros
    zeros += 1
    end 


=end

def expandedForm(num)
  zeros = 0
  results = []

  str_arr = num.to_s.split('')
  str_arr[0] != '0' ? results << str_arr.delete_at(0) : str_arr.delete_at(0)

  str_arr.each do |char|
    if char != '0' && char != '.'
      results << char + '/' + '1' + '0' * zeros
    end

    zeros += 1
  end

  results.join(' + ')

end

p expandedForm(1.24) #// should return '1 + 2/10 + 4/100'
p expandedForm(7.304) # // should return '7 + 3/10 + 4/1000'
p expandedForm(0.04)# // should return '4/100'