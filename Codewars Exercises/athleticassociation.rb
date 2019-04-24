=begin 

input = single string argument

output = a new string

rules = compare the different times within the string input
        by calculating the range, medium, and mean for the
        string data.

        the final string will have the range, median, and mean
        in that order.

        Must be in the correct format with leading zeros.

ex = 

"01|15|59, 1|47|16, 01|17|20, 1|32|34, 2|17|17"
=> "Range: 01|01|18 Average: 01|38|05 Median: 01|32|34"

Algorithm =

convert the string into an array
change each string in array into total seconds
outsource each function to a new method
that will be invoked inside #stat
calculate the range (highest - lowest)
calculate the median (sort)
calculate the mean (reduce, / size, convert from seconds to hours, minutes, seconds)

=end

MINUTES_IN_HOUR = 60
SECONDS_IN_MINUTE = 60
SECONDS_IN_HOUR = MINUTES_IN_HOUR * SECONDS_IN_MINUTE

def stat(str)
  str = str.split(',')
  
  p "Range: #{range(str)}, Mean: #{mean(str)}, Median: #{median(str)}"
end

def range(arr)
  range_vars = []

  all_times_to_sec = turn_all_seconds(arr)

  range_vars << all_times_to_sec.first
  range_vars << all_times_to_sec.last

  range_seconds = range_vars.sort { |a, b| b <=> a }
  range_seconds = range_seconds[0] - range_seconds[1]

  convert_seconds_time(range_seconds)
end

def convert_seconds_time(secondsnum)
    hours, remaining_seconds = secondsnum.divmod(SECONDS_IN_HOUR)
    minutes, seconds = remaining_seconds.divmod(SECONDS_IN_MINUTE)
    "#{format('%02d', hours)}|#{format('%02d', minutes)}|#{format('%02d', seconds)}"
end

def mean(arr)
  all_times_to_sec = turn_all_seconds(arr)

  convert_seconds_time(all_times_to_sec.reduce(:+) / arr.size)
end

def median(arr)
  all_times_to_sec = turn_all_seconds(arr)

  middle = (arr.size / 2)
  median_seconds = []

  if arr.size.odd?
    convert_seconds_time(all_times_to_sec[middle])
  else
    median_seconds << all_times_to_sec[middle]
    median_seconds << all_times_to_sec[middle - 1]
    median_seconds = median_seconds.reduce(:+) / 2
    convert_seconds_time(median_seconds)
  end
end

def turn_all_seconds(arr)
  all_times_to_sec = []

  arr.each { |number| all_times_to_sec << calc_seconds(number) }

  all_times_to_sec = all_times_to_sec.sort { |a, b| b <=> a }
end

def calc_seconds(string)
  string = string.split('|').map { |number| number = number.to_i }
  total_seconds = []

  total_seconds << string[0] * SECONDS_IN_HOUR
  total_seconds << string[1] * SECONDS_IN_MINUTE
  total_seconds << string[2]

  total_seconds.reduce(:+)
end

stat("02|15|59, 2|47|16, 02|17|20, 2|32|34, 2|17|17, 2|22|00, 2|31|41")

