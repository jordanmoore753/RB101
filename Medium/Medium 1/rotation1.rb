=begin 

wrote out pseudocode and summary/explanation
of problem in my notebook

=end

def rotate_string(str)
  (str.chars[1..-1] + [str.chars[0]]).join('')
end

def rotate_integer(num)
  (num.digits.reverse[1..-1] + [num.digits[-1]]).join('').to_i
end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

x = 'gone girl!'

p rotate_string(x)

y = 4323433

p rotate_integer(y)

z = [1, 3, 4, 2]

p rotate_array(z)



