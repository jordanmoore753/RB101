=begin 

input = int

output = string

rules = insert '-' before odd digits
        except when odd number is at start

algorithm =
counter = 1
- new_str = ''
- convvert int to a string
- call chars on int
  if char.to_i.odd? && counter < str.length - 1
    append char and '-' to new_str
  if str[counter].odd?
    append char and '-'
    else append char


=end

def dashatize(num)
  return 'nil' if num == nil
  num = num.to_s
  num.to_s.delete!('-')
  return num.to_s if num.to_s.length == 1

  counter = 1
  new_str = ''

  num = num.to_s

  num.each_char do |char|
    if char.to_i.odd? && counter < num.length
      new_str += char + '-'
    elsif num[counter].to_i.odd?
      new_str += char + '-'
    else 
      new_str += char
    end

    counter += 1
  end

  new_str
end

p dashatize(0)
p dashatize(6815)
p dashatize(274)