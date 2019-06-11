=begin 

input = an integer parameter, represents the 
amount of minutes past (positive) midnight
or before (negative) midnight

output = the actual time based on the integer
parameter

quals = 24 hour format, leading 0 when single digit

ex =

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"


so, I need to get my calculations to a common 
unit in order to convert the hours and minutes.
I need to figure out the total minutes in a day
so I can see how many minutes are remaining after
I divmod.

=end

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def time_of_day(original_minutes)
  minutes = (original_minutes % MINUTES_PER_DAY).round
  hours, remaining_minutes = minutes.divmod(MINUTES_PER_HOUR)
  "#{format('%02d', hours)}:#{format('%02d', remaining_minutes)}"
end

p time_of_day(1600)