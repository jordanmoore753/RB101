=begin

input = a string of words (first name last name)

output = the string but last name first, comma, then
first name

quals

ex: swap_name('Joe Roberts') == 'Roberts, Joe'

=end

def swap_name(str)
    str.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'