=begin 

input = string and integer

output = string

rules = cut the string into chunks of the integer
        input size
        if the integer is too big return ''
        if the integer is less than 0 or 0 return ''
          if string is empty return ''
        if the SUM of the CUBES of its digits is
          DIVISIBLE by 2, reverse the chunk.
        else, rotate the elements to the left by one.

algorithm =
- cubes_by_2? method
  - takes string, turns into digits
  - for each letter, add to new results array as a num
  - for each num in results, map! 
    - num ** 3
  then, reduce the results and % by 2, if its 0, true

- rotate method
  - push the first index 0 to end of results arr
  - delete at index 0
  - join the array

- reverse
  - counter = -1
  - new results array
  - append arr[counter] to results
    decrement counter by 1
  join results array

- revrot method
  - counter = 0
  - results is empty array
  - length of str / input integer.times do
    - results append the str[counter .. counter + input - 1]

    counter = 0

  - results.size times do
    - if sumofcubes? true
        arr[0] = reverse(arr[0])
      - else
        arr[0] = rotate(arr[0])

    join

=end

def revrot(str, sz)
  return '' if sz > str.length || str.length == 0 || sz <= 0
  counter = 0
  results = []

  (str.length / sz).times do 
    results << str[counter..(counter + sz - 1)]
    counter += sz
  end

  counter = 0
  
  results.size.times do 
    if sum_of_cubes?(results[counter])
      results[counter] = reverse(results[counter])
    else
      results[counter] = rotate(results[counter])
    end

    counter += 1
  end

  results.join
end

def reverse(string)
  counter = -1
  results = []
  arr = string.split('')

  until results.size == arr.size
    results << arr[counter]
    counter -= 1
  end

  results.join
end

def rotate(string)
  arr = string.split('')
  arr.push(arr[0])
  arr.delete_at(0)
  arr.join
end

def sum_of_cubes?(string)
  arr = string.split('')
  arr.map! { |num| num.to_i ** 3 }
  arr.reduce(:+) % 2 == 0
end
  
p rotate("123456")
p revrot("733049910872815764", 5)
p revrot("1234", 5)
