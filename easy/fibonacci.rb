=begin 

input = a parameter of an array with several elements

output = return the original array but with
the first element shifted to the end of the array

quals = orig array cannot be modified

ex =

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]  

so, I can't use anything that creates 
or modifies the original array object. But I can
re-assign the elements by index number, as that doesn't
modify the object.

calculate_spaces(integer, count)
=end

def find_fibonacci_index_by_length(integer)
  sum = 0
  fibonacci_array = [1]

  until check_digits_last(fibonacci_array, integer)
    if fibonacci_array.length < 2
      sum += fibonacci_array.last
    else
      sum += fibonacci_array[-2]
    end
    fibonacci_array << sum
  end
  return_index_number(fibonacci_array)

end

def check_digits_last(array, integer)
  array.last.digits.length == integer
end

def return_index_number(array)
  array.length
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476      # My computer had problems running the last two method invocations so I left them out


