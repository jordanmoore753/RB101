=begin 

input = an array and integer

output = an array

rules = depending on the array size, return an array
        with (second input) amount of elements
        if array size is 4, each successive element will
          be the sum of the previous 4 numbers

algorithm =
- initialize s as an array with name results
- initialize bonacci variable and assign to results.size
- initialize counter variable and assign to 0
- until results size is n,
  append results[counter..counter + bonacci].reduce(:+)
  end

=end

def Xbonacci(s,n)
  bonacci, counter = s.size, 0
  return s[counter...n] if s.size > n

  until s.size == n 
    s << s[counter..counter + bonacci].reduce(:+)
    counter += 1
  end

  s
end

# p Xbonacci([0,0,0,0,1], 10)
p Xbonacci([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], 9)