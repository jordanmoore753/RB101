=begin 

input = two integers

output = array with subarrays

rules = the first number determines the number  
        to calculate multiplication tables up to
        (3) => 1,2,3] [2,4,6] [3,6,9] the first number! in array
        the second number determines how many 
        sub arrays to put in results
        3 => [] [ ] []

algorithm =
initialize results array
- initialize counter set to 1
- append counter to results as subarray
counter set to 0
- until results size is 3

- for each subarray
  until subarray size == (second integer)
    subarray << subarray[counter] + 1
    counter += 1
  end 

  counter = 0

=end

def multiplication_table(a, b)
  results = []
  counter = 1

  until results.size == a 
    results << [counter]
    counter += 1
  end

  counter = 0
  
  results.each do |sub_arr|
    until sub_arr.size == b 
      sub_arr << sub_arr[0] + sub_arr[counter] 
      counter += 1
    end

    counter = 0
  end

  results
end

p multiplication_table(3, 3)