=begin 

input = string

output = hash

rules = calcluate the percentage of each of the following
        lowercase
        uppercase
        anything else
        in the string and present it in integer or float
        depending on the return value of the calculation

algorithm =
- initialize size as str length
- initialize hash with keys, lowercase, uppercase, neither
 with values 0
- populate arrays with lowercase, uppercase
- determine count of each type in string and store
in separate variables
- divide those variables in float by the size in float,
  - if the last digit is anything besides 0, add it to the appropriate
    key with float


=end

def letter_percentages(str)
  size = str.length.to_f
  hsh = {:lowercase => 0, :uppercase => 0, :neither => 0}
  lowers, uppers = ('a'..'z').map {|char| char }, ('A'..'Z').map {|char| char }

  lower_count = str.split('').count { |char| lowers.include?(char) }
  upper_count = str.split('').count { |char| uppers.include?(char) }
  neither_count = str.split('').count { |char| !lowers.include?(char) && !uppers.include?(char) }

  lower_count = (lower_count / size) * 100
  upper_count = (upper_count / size) * 100
  neither_count = (neither_count / size) * 100

  lower_count.to_s[-1] != '0' ? hsh[:lowercase] += lower_count : hsh[:lowercase] += lower_count.to_i
  upper_count.to_s[-1] != '0' ? hsh[:uppercase] += upper_count : hsh[:uppercase] += upper_count.to_i
  neither_count.to_s[-1] != '0' ? hsh[:neither] += neither_count : hsh[:neither] += neither_count.to_i

  hsh
end


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }