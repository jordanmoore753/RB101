=begin 

input = string

output = string

rules = multiply each character by its index + 1
        add to new array and then join with '-'
        first letter of each element should be capitalized


=end

def accum(string)
  result = []
  string.split('').each_with_index do |ele, idx|
    result << (ele * (idx + 1)).capitalize
  end
  result.join('-')
end

p accum("ZpglnRxqenU")
