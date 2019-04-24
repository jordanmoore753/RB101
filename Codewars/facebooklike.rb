
def likes(names)
  return "no one likes this" if names.empty?
  return "#{names[0]} likes this" if names.size == 1
  return "#{names[0]} and #{names[1]} like this" if names.size == 2
  return "#{names[0]}, #{names[1]} and #{names[2]} like this" if names.size == 3 
  return "#{names[0]}, #{names[1]} and #{names.size - 2} others like this" if names.size > 3
end

likes([])