=begin 

input = an array containing hashes

output = string

rules = return each value from each hash
        inside of one string
        for one value, just give it back
          for two values, & between
          for three values, , between all preceding the last value and & for it

algorithm =
- results variable set to empty array
- for each hash in input array
- append values of each hash to results
- case statement, if 3 or more
  - slice the array into two, the first containing all elements leading up to not including last
  - second slice contains last element
  - left is joined with commas
  - right is prepended a &
- if 2, 
  join with a &
if 1,
  join

=end

def list(names)
  result = []
  names.each { |hsh| result << hsh.values }
  result.flatten!

  if result.size >= 3
    left, right = result.slice(0...-1), result.slice(-1)
    left = left.join(', ')
    right.prepend(' & ')
    return left += right
  elsif result.size == 2
    result.join(' & ')
  elsif result.size == 1
    result.join
  end

end

p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])
p list([{name: 'Bart'},{name: 'Lisa'}])
p list([{name: 'Bart'}])
# x = [ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]
# p x.map { |hah| p hah.values }.join(', ')