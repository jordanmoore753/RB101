def solution(string)
  results = []
  string.split('').each do |letter|
    if letter.upcase == letter
      results << ' '
      results << letter
    else
      results << letter
    end
  end
  
  results.join
end