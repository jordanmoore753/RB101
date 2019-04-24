def prompt(message)
    Kernel.puts("=> #{message}")
end

def integer?(number)
  number.to_i.to_s == number
end

def float?(number)
  number.to_f.to_s == number 
end

def valid_number?(number)
  integer?(number) || float?(number)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome! Enter your name: ")

name = ''
loop do 
  name = gets().chomp
  if name.empty?()
    prompt("Come on! Give me a name.")
  else
    break
  end
end

loop do 
  prompt("Hello, #{name}.")
  number1 = ''
  number2 = ''
  loop do 
    prompt("What's your first number?")
    number1 = gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Give me an integer other than 0.")
    end
  end

  loop do 
    prompt("Whats your second number?")
    number2 = gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Give me an integer other than 0.")
    end
  end

  operator_prompt = <<-MSG
  Which operation to perform?
  1). Add
  2). Subtract
  3). Multiply
  4). Divide
  MSG
  prompt(operator_prompt)
  operator = ''

  loop do
  operator = gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Come on, pick 1, 2, 3, or 4.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
    when '1'
      number1.to_i() + number2.to_i()
    when '2'
      number1.to_i() - number2.to_i()
    when '3'
      number1.to_i() * number2.to_i()
    when '4'
      number1.to_f() / number2.to_f()

  end

  prompt("The result is #{result}.")

  prompt("Do you want to perform another? Y/N: ")
  answer = gets().chomp
  break unless answer.downcase().start_with?('y') 

end

prompt("Goodbye!")
