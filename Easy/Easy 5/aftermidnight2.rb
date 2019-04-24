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

def after_midnight(time)
  hours = time.slice(0, 2).to_i
  minutes = time.slice(3, 4).to_i
  total_minutes = 0

  hours *= MINUTES_PER_HOUR
  hours += minutes
  total_minutes = hours % MINUTES_PER_DAY
end

def before_midnight(time)
  hours = time.slice(0, 2).to_i
  minutes = time.slice(3, 4).to_i
  total_minutes = 0

  hours *= MINUTES_PER_HOUR
  hours += minutes
  total_minutes = -(hours) % MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754 
p before_midnight('12:34') == 686 
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0 

