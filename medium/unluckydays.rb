=begin 

input = an integer

output = an integer

rules = calculate how many friday the 13ths
        in a given year (integer)


algorithm =
- initialize var named counter to store how many 13ths
- invoke until loop method
- break condition: year is integer + 1
- for every iteration of the loop,
- add 1 day to the value of the date before it
- if the return value of the date has a friday and 13,
  increment counter by 1

=end

require 'date'

def friday_13th(year_num)
  results = 0
  starting_date = Date.new(year_num, 01, 01)

  until starting_date.year > year_num
    starting_date += 1
    results += 1 if starting_date.cwday == 5 && starting_date.day == 13
  end

  results
end

p friday_13th(2019)





