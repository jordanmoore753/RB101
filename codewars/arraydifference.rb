=begin

input = an array argument containing several subarrays,
each subarray containing two integers

output = returns an array of strings, string can be either
'senior' or 'open'

rules = senior is determined by being at least 55 years old
and having a handicap greater than 7

ex = [[18, 20],[45, 2],[61, 12],[37, 6],[21, 21],[78, 9]]

=> ["Open", "Open", "Senior", "Open", "Open", "Senior"]

this is your basic #map method example, we want a new
array based on very specific criteria that we can
specify in a do..end block

=end

def openOrSenior(data)
  data.map { |sub_array| sub_array[0] >= 55 && sub_array[1] > 7 ? 'Senior' : 'Open'}
end

p openOrSenior([[18, 20],[45, 2],[61, 12],[37, 6],[21, 21],[78, 9]])



