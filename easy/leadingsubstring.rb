=begin 

wrote out pseudocode and summary/explanation
of problem in my notebook

=end

def substrings_at_start(str)
  result = []
  counter = 1
  (0...str.size).each do |start_index|
    this_sub = str[start_index..-1]
    result << this_sub
  end
  p result
end

substrings_at_start('xyzzy')