=begin 

input = array of numbers passed in as argument

output = new array

rules = sort the odd numbers only by increasing number,
leave even ones in the same place they're in

ex = sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]

=end

=begin
def sort_array(arr)
  odds = []
  new_array = []
  odd_counter = 0

  arr.each do |value|
    odds << value if value.odd?
  end
  odds.sort! 

  arr.each do |value|
    if value.even?
      new_array << value
    elsif value.odd?
      new_array << odds[odd_counter]
      odd_counter += 1
    end
  end

  new_array
end
=end

# BEST PRACTICE

def sort_array(xs)
  odd = xs.select { |value| value.odd? }.sort.each
  xs.map { |x| x.odd? ? odd.next : x }
end

p sort_array([5, 3, 2, 8, 1, 4])


