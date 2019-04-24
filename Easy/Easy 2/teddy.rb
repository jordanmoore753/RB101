def gen_random_age(name)
    age = rand(20..200)
    puts "Teddy is #{age} years old!"
end

ted = 'Teddy'
gen_random_age(ted)