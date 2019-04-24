def include?(arr, num)
  arr.each { |element| return true if num == element }
  false
end

include?([], 3)