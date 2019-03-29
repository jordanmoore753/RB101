=begin 

input = a floating point number passed as argument
to method

output = a string that represents the floating argument
in degrees, minutes, and seconds

ex: dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=end

DEGREE = "\xC2\xB0"

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degree_flt)
  total_seconds = (degree_flt * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  puts "#{degrees}" + DEGREE + "#{format('%02d', minutes)}'#{format('%02d', seconds)}\""
end

dms(123.145)




