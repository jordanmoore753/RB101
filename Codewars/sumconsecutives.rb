=begin 

input = array of integers

output = array

rules = sum consecutive integers
        if the curr number doesn't match the last
        element of the new array
        just add the new element, otherwise add the element
        to the previous element

algorithm =
- results = []
- int.digits reverse
- for each num in int,
  if results is empty, add the current element
  if results[-1] == curr element, add curr element to results[-1]
    else
      append curr element



=end

def sum_consecutives(s)
  results = []

  s.each_with_index do |num, idx|
    if results.empty?
      results << num
      next
    end

    s[idx - 1] == num ? results[-1] += num : results << num 
  end

  results
end

p sum_consecutives([-5,-5,7,7,12,0])
p sum_consecutives([1,4,4,4,0,4,3,3,1])
