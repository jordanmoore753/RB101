=begin 

input = an odd integer

output = an eight pointed star

rules = only odd integers
        print out n strings (n is input)
        halfway is n represented by *
        midpoint of each line is a *
        ends are a *
        in between are spaces
        length of the line is determined by n

explained =
- calculate str_midpoint by:
  - str.size/2 -- the output is the index the midpoint * will be.

algorithm =
- initialize side_spaces variable and assign to 0
- initialize midpoint_n variable and assign to n.size / 2
- initialize midpoint_str variable and assign to 0
- initialize counter variable and assign to n
- initialize str and assign to '
'
- until counter < 1
  - side_spaces = n - counter
  - midpoint_str = counter / 2
  - str = counter * ' '
  - first and last char of str = '*'
  - midpoint_str of str = '*'
  - puts "#{side_spaces}#{str}#{side_spaces}""

- puts n x '*'
  assign counter to 1

- until counter > n
  side_spaces = n - counter


=end

def star(n)
  side_spaces, actual_spaces = 0, ' '
  counter = n 

  until counter < 3
    str, real_side_space = ' ', ' '
    number_side_spaces = (n - counter) / 2

    real_side_space *= number_side_spaces
    midpoint_str = counter / 2
    str *= counter

    str[0], str[-1] = '*', '*'
    str[midpoint_str] = '*'
    puts "#{real_side_space}#{str}#{real_side_space}"

    counter -= 2
  end

  puts '*' * n
  counter = 3

  until counter > n
    str, real_side_space = ' ', ' '
    number_side_spaces = (n - counter) / 2

    real_side_space *= number_side_spaces
    midpoint_str = counter / 2
    str *= counter

    str[0], str[-1] = '*', '*'
    str[midpoint_str] = '*'
    puts "#{real_side_space}#{str}#{real_side_space}"

    counter += 2
  end
end

star(9)



