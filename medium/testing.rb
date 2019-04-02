# 1 ---------------------------------------

# For most of these questions, all there is to do is just predict the output.

def mapping_things(arr)
  new_arr = []
  arr.map do |value|
    new_arr << value unless value.odd?
  end
end

x = [1, 2, 3, 4, 5, 6]
mapping_things(x)

# 2 ---------------------------------------

a = [1, 2, 3, 4, 2, 4]
b = a
c = a.uniq
b = a << c 

p "a is: #{a}, b is: #{b}, c is: #{c}."

# 3 -----------------------------------------

some_var = 7

loop do 
  some_var = 5
  break
end

p some_var + 10

# 4 -------------------------------------------

def random_method(z)
  z = 3
end

z = 5

p random_method(z)
p z 

# 5 --------------------------------------------

def change_var(number)
  number + 3
end

example = 45

p change_var(example)
p example

# 6 ---------------------------------------------

def changing_word(words)
  words.each { |word| word.capitalize! }
end

list_of_words = ['cranberry', 'strawberry', 'pineapple', 'overalls']
p changing_word(list_of_words)
p list_of_words

# 7 ----------------------------------------------

def select_my_elder_non_enemy(hsh)
  hsh.select do |key, value|
    key if value['relation'] != 'enemy' && value['age'] > 20
  end
end

people_known = { 'Patrick' => {'age' => 24, 'relation' => 'enemy' }, 
                 'SpongeBob' => {'age' => 21, 'relation' => 'enemy' },
                 'Mr. Krabs' => {'age' => 54, 'relation' => 'boss' },
                 'Clarinet' => {'age' => 2, 'relation' => 'friend' } }

p select_my_elder_non_enemy(people_known)

# 8 -----------------------------------------------

def mutate_or_not(str)
  new_str = str.upcase!
end

one_line = 'I wonder if this will be mutated.'

mutate_or_not(one_line)
p one_line

# 9 ------------------------------------------------

a = 'I love Launch School.'

if a 
  puts 'a is truthy so it evaluates to true'
else
  puts 'a is falsey so it evaluates to false'
end

# 10 -------------------------------------------------------------------------------------

# On which lines do we initialize variables? And what will be the output of the method invocation on line 118?

def some_other_method(num)
  new_var = num 
  num += 1
end

zap = 'Ouch!'

loop do 
  zap = 'Come on!'
  inner_var = 3
  break
end

p some_other_method(inner_var)

# 11 ----------------------------------------------------------------------------------------

# Think about which scope each variable is visible within. Also, are there any re-assignments anywhere? What will the method invocation on
# line 144 output?

LETS_GO = [1, 2, 3, 4]

def calculate_product_times_two(num)
  new_num = 2
  new_num *= num
end

def i_want_other_meal(food_list)
  food_list
end

favorite_foods = ['pancakes', 'lentils', 'waffles', 'pizza']
favorite_number = 35

2.times do |counter|
  which_food_for_dinner = favorite_foods[counter]
  more_food = i_want_other_meal(favorite_foods[counter + 2])
  favorite_number += 1
  end

p calculate_product_times_two(favorite_number)
which_food_for_dinner = favorite_foods[2]

# 12 ------------------------------------------------------------------------------------------------------

# What are the return values of lines 163 and 164?

def change_number(arr)
  arr.map do |value|
    value += 1 unless value.odd?

    return value
  end
end

string_of_words = 'playing basketball is fun'
numbers_plenty = [2, 4, 6, 7, 9, 10]

change_number(numbers_plenty)
puts string_of_words

# 13 -----------------------------------------------------------------------------------------------------

# On which lines are methods invoked, and on which lines are methods defined? (There are three invocations)

def random_method_abc(str)
  str << ('b')
end

words = 'lets go to school'
more_words = 'what?'

random_method_abc(words)

loop do 
  random_method_abc(more_words)
  break
end

p more_words

