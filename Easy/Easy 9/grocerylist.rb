=begin 

input = an array with subarrays

output = an array with the correct number
        of elements for a given element
        - based on the second element in given subarray

rules =

algorithm =
- arr counter set to 0
- until counter > arr.size
  - initialize second counter set to 0
  - initialize int counter set to 1
  - int.times do
    - results << arr[second]


=end

def buy_fruit(arr)
  sub_array_count = 0
  results = []

  until sub_array_count >= arr.size
    counter = 0
    int_count = 1

    arr[sub_array_count][int_count].times do 
      results << arr[sub_array_count][counter]
    end

    sub_array_count += 1
  end

  results
end

def buy_fruit(arr)
  arr.map { |fruit, amount| [fruit] * amount }.flatten
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]