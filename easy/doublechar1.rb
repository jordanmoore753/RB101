=begin 

wrote out pseudocode and summary/explanation
of problem in my notebook

=end

def repeater(str)
  result = ''
  str.each_char do |char|
    if /[bcdfghjklmnpqrstvwxyz]/i.match(char)
      result << char * 2 
    else 
      result << char
    end
  end

  result
end

p repeater('')