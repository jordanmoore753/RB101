=begin 

input = given three integers

output = array of three integers

rules = calculate the time needed for runner b
        to catch runner a, given running rates (first
        two integers) and the lead that runner b
        starts with
        hours ,minutes, second for display

algorithm =
- define constants of minutes per hour, and seconds per minute
- define constant of seconds per hour
- 


=end

def increment(num)
  num.to_f / 60.to_f
end

MINUTES_PER_HOUR = 60
SECONDS_PER_MINUTE = 60 
SECONDS_PER_HOUR = MINUTES_PER_HOUR * SECONDS_PER_MINUTE

z = 850.to_f / 60.to_f

y_rate = 720.0
x_rate = 850.0

x = 70.0
counter = 0
y = 0

until y >= x 
  x += increment(x_rate)
  y += increment(y_rate)
  counter += 1
  break if y >= x 
end

counter *= 60
p counter
hours, remaining_minutes = counter.divmod(SECONDS_PER_HOUR)


minutes, seconds = remaining_minutes.divmod(SECONDS_PER_MINUTE)
p hours, minutes, seconds
