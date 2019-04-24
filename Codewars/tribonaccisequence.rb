=begin 

input = an array and integer

output = an array

rules = the second parameter amount of times,
        compute the tribonacci sequence for the
        given array.
        Tribonacci is like fibonacci but with 3
        instead of 2 numbers

algorithm =
- intialize variable named counter to value of 0
- integer times do the following
  - append the sum of arr[counter] arr[counter 1] arr[counter 2]
  to the array
  - increment counter by 1

=end

def tribonacci(signature, n)
  counter = 0

  until signature.size == n 
    signature << signature[counter] + signature[counter + 1] + signature[counter + 2]
    counter += 1
  end

  signature.slice(0..n)
end

p tribonacci([1, 1, 1], 10)