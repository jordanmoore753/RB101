YEAR_EXCEPTIONS = %w(11 12 13 14 15 16 17 18 19)

def century(year)
  year_digits = []
  updated_year = (year / 100).round

  year_digits << year.digits
  year_digits.flatten!.reverse!

  updated_year += 1 unless year_digits[-1] == 0 && year_digits[-2] == 0

  updated_year = updated_year.to_s
  year_by_ten = (updated_year.to_i / 10).round
  year_by_ten = year_by_ten.to_s

  if YEAR_EXCEPTIONS.include?(updated_year) || YEAR_EXCEPTIONS.include?(year_by_ten)
    updated_year << 'th'
  elsif updated_year.end_with?('1')
    updated_year << 'st'
  elsif updated_year.end_with?('2')
    updated_year << 'nd'
  elsif updated_year.end_with?('3')
    updated_year << 'rd'
  else
    updated_year << 'th'
  end

end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'