#ask the user for two numbers
#ask the usr for an operation to perform
# perform the operation on two numbers
#output the result

#answer = Kernel.gets()
#Kernel.puts(answer)

#included loop so a user could try again if they misclicked the operation

def prompt(message)
	Kernel.puts("=> #{message}")
end

def valid_number?(number)
	number.to_i() != 0
end



name = ''

prompt("Welcome to Calculator!")
prompt("What's your name? ")
name = gets.chomp
prompt("Hi, #{name}.")

loop do 
	number1 = ''
	number2 = ''

	loop do
		prompt("What's the first number?")
		number1 = gets().chomp()
		if valid_number?(number1)
			Kernel.puts("The number is #{number1}.")
			break
		else
			prompt("It must be an integer.")
		end
	end

	loop do 
		prompt("What's the second number?")
		number2 = gets().chomp()

		if valid_number?(number2)
			Kernel.puts("The number is #{number2}.")
			break 
		else
			prompt("It must be an integer.")
		end
	end

		prompt("What operation do you want? 1) Add 2) Subtract 3) Multiply 4) Divide: ")
		operator = ''

	loop do 
		operator = Kernel.gets().chomp()
		if %w(1 2 3 4).include?(operator)
				break
  	else
  		prompt("Please put a number between 1 and 4.")
  	end
  end

  	result = case operator
					when '1'
						number1.to_i + number2.to_i 
						prompt("The result is #{result}.")
					when 2
						number1 - number2
					when 3
						number1 * number2
					when 4
						number1.to_f / number2.to_f
  				end
  				prompt("The result is #{result}.")
  				prompt("Do you want to perform another calculation? (Y/N): ")
  				answer = gets().chomp()
  				break unless answer.downcase().start_with?('y')
  end  

	
