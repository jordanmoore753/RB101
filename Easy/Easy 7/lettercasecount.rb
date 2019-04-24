def letter_case_count(string)
  result = {lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |char|
    if char =~ (/[[:lower:]]/)
      result[:lowercase] += 1
    elsif char =~ (/[[:upper:]]/)
      result[:uppercase] += 1
    elsif char =~ (/\d/) || char =~ (/\D/)
      result[:neither] += 1
    end
  end

  p result
end

a = 'abCdef 123'
b = 'AbCd +Ef'
c = '123'
d = ''

letter_case_count(a)
letter_case_count(b)
letter_case_count(c)
letter_case_count(d)