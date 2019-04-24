=begin 

input = a floating point number that representas an angle
between 0 and 360 degrees

output = return a string object representing the angle
in degrees, minutes, seconds.

quals: degree == 60 minutes
      minute == 60 seconds
      secondsperdegree = 3600 seconds

ex: dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=end

DEGREE = "\xC2\xB0"

MINUTES_PER_DEGREEE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREEE * SECONDS_PER_MINUTE

def dms(degrees)
  total_seconds = (degrees * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  puts "#{degrees}" + DEGREE + "#{format('%02d', minutes)}'#{format('%02d', seconds)}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


