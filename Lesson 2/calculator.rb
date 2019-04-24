#ask the user for two numbers
#ask the usr for an operation to perform
# perform the operation on two numbers
#output the result

#answer = Kernel.gets()
#Kernel.puts(answer)

#included loop so a user could try again if they misclicked the operation


result = nil

loop do 

Kernel.puts("Welcome to Calculator!")
Kernel.puts("What's the first number?")

number1 = Kernel.gets().chomp().to_i
Kernel.puts("The number is #{number1}.")

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp().to_i
Kernel.puts("The number is #{number2}.")

Kernel.puts("What operation do you want? 1) Add 2) Subtract 3) Multiply 4) Divide: ")
operator = Kernel.gets().chomp().to_i

if operator == 1
	result = number1 + number2
	
elsif operator == 2
	result = number1 - number2
	
elsif operator == 3
	result = number1 * number2
	
elsif operator == 4
	result = number1.to_f / number2.to_f
	
else
  Kernel.puts("Please put a number between 1 and 4.")
  next		
	end
	break
end

Kernel.puts("The result is #{result}.")
