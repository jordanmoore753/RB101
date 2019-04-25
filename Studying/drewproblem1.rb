def odds_dash(int)
  results = []
  int_arr = int.digits.reverse

  int_arr.each_with_index do |num, idx|
    if idx == (int_arr.size - 1)
      results << num
      break
    end
    
    results << num
    results << '-' if num.odd? && int_arr[idx + 1].odd?
  end

  results.join('')
end

p odds_dash(13256794) == '1-32567-94'
p odds_dash(132567945) == '1-32567-945'