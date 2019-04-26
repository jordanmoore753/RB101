=begin 

input = two strings

output = a string

rules = depending on each soldiers worth,
        compute the total amount of points
        each string gets
        each number in string represents the count of
        a different type of soldier
        right is evil, left is good
        output either:
        tie: 'Battle Result: No victor on this battle field', 'Should be a tie'
        human: 'Battle Result: Good triumphs over Evil', 'Good should triumph'
        orc: 'Battle Result: Good triumphs over Evil', 'Good should triumph'

algorithm =
- left and right variable, split strings into array respective
- values_good is the values of each in order
- values_evil is the values of each in order
- good_points is the result of iterating through each left index and multiplying each by the index of values_good
- same for bad_points
- evaluate which is bigger
- tie, win. loss
output string


=end

def goodVsEvil(good, evil)
  left, right = good.split(' ').map(&:to_i), evil.split.map(&:to_i)
  good_vals, evil_vals = [1, 2, 3, 3, 4, 10], [1, 2, 2, 2, 3, 5, 10]
  counter = 0

  good_total, evil_total = [], []

  right.each do |num|
    evil_total << num * evil_vals[counter]
    counter += 1
  end

  counter = 0

  left.each do |num|
    good_total << num * good_vals[counter]
    counter += 1
  end

  good_total, evil_total = good_total.reduce(:+), evil_total.reduce(:+)

  return 'Battle Result: No victor on this battle field' if good_total == evil_total

  good_total > evil_total ? 'Battle Result: Good triumphs over Evil' : "Battle Result: Evil eradicates all trace of Good"

end

p goodVsEvil('1 0 0 0 0 0', '1 0 0 0 0 0 0')