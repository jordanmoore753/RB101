=begin 

input = method with two arguments: first argument:
array of 2 or more strings, 2nd argument: hash with 
two keys: :title and :occupation.

output = a greeting that uses full name (1st argument) and occupation

quals:

ex: greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

=end

def greetings(array, hsh)
    full_name = array.join(' ')
    title_occ = {}

    hsh.map do |key, value|
        title_occ[key] = value
    end

    title = title_occ[:title]
    occupation = title_occ[:occupation]

    puts "Hello, #{full_name}! Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })