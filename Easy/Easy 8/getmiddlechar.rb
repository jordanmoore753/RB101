=begin 

wrote out pseudocode and summary/explanation
of problem in my notebook

=end

def center_of(str)
  ctr_idx = str.size / 2
  if str.size.odd?
    str[ctr_idx]
  else
    str[ctr_idx - 1, 2]
  end

end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') 
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'