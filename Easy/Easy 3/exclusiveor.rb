
def xor?(int, int2)
  return true if int == false && int2 == true || int == true && int2 == false
  return false
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false