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

def calculate_spaces(bignum, num)
  ((bignum - num) / 2).round
end

def display_line(spaces_string, num_stars)
  puts "#{spaces_string}#{num_stars}#{spaces_string}"
end

def reset_spaces
  ' '
end

def reset_stars
  '*'
end

def diamonds(integer)
  spaces = 0
  str_spaces = ' '
  stars = '*'
  counter = 1

  1.upto(integer) do |count|
    if count.odd?
      spaces = calculate_spaces(integer, count) # set to 0 on next line if negative issue
      str_spaces *= spaces
      stars *= count
      display_line(str_spaces, stars)
      str_spaces, stars = reset_spaces, reset_stars
    end
  end

  integer.downto(1) do |count|
    if count.odd? && count != integer
      spaces = calculate_spaces(integer, count) # set to 0 on next line if negative issue
      str_spaces *= spaces
      stars *= count
      display_line(str_spaces, stars)
      str_spaces, stars = reset_spaces, reset_stars
    end
  end

end

diamonds(9)



