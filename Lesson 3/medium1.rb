# 1

line = 'The Flintstones Rock!'
10.times {p line.prepend(' ')}

# 2

# puts "the value of 40 + 2 is " + (40 + 2) 

# the error is: no implicit conversion of Fixnum into String
# this is caused by attempting to add a string to an integer

num1 = 40
num2 = 2
puts "the value of 40 + 2 is " << "#{num1 + num2}"

# or

puts "the value of 40 + 2 is " + (40 + 2).to_s

# 3

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

answer = 0

loop do 
answer = gets.chomp.to_i
break unless answer <= 0
puts "Try again."
end

factors(answer)

#BONUS 1: number % divisor == 0 ensures that there is no remainder left meaning
#         it divides evenly

#BONUS 2: factors returns the last actual value in the while loop

# 4

# Yes, I prefer the << method, since the original object (buffer) will be 
# modified since << mutates the caller. In the second option, the input
# passed in for buffer will not be mutated.

# 5

# fix: the local variable "limit" must be passed into the method
# as an argument. Method has its own scope.
 
limit = 15

def fib(first_num, second_num, lim)
  while first_num + second_num < lim
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# 6

def str_method(a_string_param)
  a_string_param << "rutabaga"
end

def arr_method(an_array_param)
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]

str_method(my_string)
arr_method(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# I split the method into two separate ones because
# the original method seemed to have two competing visions
# and was confusing to look at

# 7

answer = 42

def mess_with_it(some_number)
  some_number += 8
  p some_number.object_id
end

new_answer = mess_with_it(answer)

p answer - 8 
# the output is 34. numbers are immutable, so when we do +=
# in the method we are reassigning to a new local variable
# inside the method, not modifying the outside scope variable.
# answer is still 42 before we print the subtraction of 8
# from it.

# 8

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

# Yes, the data was ransacked. Spot used the correct syntax
# and iteration method for changing the hash. Spot iterated
# through the munsters hash by using #each and used the outer
# hashes key "family member" in order to access the inner hashes
# keys and values. 

# 9 

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# This one was a mess of code. I took the two innermost methods first,
# rps(rock,paper) and rps(rock,scissors), and evaluated them independently
# of each other. The outputs were "rock" and "paper" respectively. Then, I called
# rps() on those two, which gave me "paper". Finally, I rps() the "paper"
# "rock", leaving me with the final output "paper".

# 10

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# For this one, output => "no". In bar(), if the input is "yes"
# then it will output "no", as shown by the param == "no" ? just 
# before it. So, bar(foo) must be "no", since foo() by default
# default to "yes".





