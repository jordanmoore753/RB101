=begin 

input = a time '12:34' a string object of numerical 
and punctuation values represents time

output = two methods: before, after. 
return the amount of minutes that the time
represents.

quals: must be valid integer between 0..1439

       Hour = 60 minutes
       Day = 1440 minutes

ex: 

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754 -
before_midnight('12:34') == 686 - modulus here, add up each side: 754, give negative: -754 % 1440
after_midnight('24:00') == 0
before_midnight('24:00') == 0 - modulus here 1440 % 1440 == 0

I have to convert both sides of the : into a consistent unit. I think
minutes will be easiest to work with.

Left side of colon: 
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(minutes)
  minutes = minutes % MINUTES_PER_DAY
  hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end



