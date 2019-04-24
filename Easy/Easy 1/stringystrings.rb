
def stringy(str)
  new_str, counter = '', 1
  
  until new_str.length >= str
    counter.odd? ? new_str += '1' : new_str += '0'
    counter += 1
  end

  new_str
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'