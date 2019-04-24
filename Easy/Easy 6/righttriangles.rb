=begin 

input = an integer argument

output = a right angle in the form of stars (*), 
based on the integer in argument

ex: triangle(5)

    *
   **
  ***
 ****
*****

=end

def triangle(num)
  str = ''
  1.upto(num) do |counter|
    str = "*" * counter
    puts str.rjust(num)
  end
end

triangle(9)

# upside down

def triangle(num)
  str = ''
  num.downto(1) do |counter|
    str = "*" * counter
    puts str.rjust(num)
  end
end

triangle(9)