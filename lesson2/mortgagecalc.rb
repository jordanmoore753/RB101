def integer?(number)
  number.to_i.to_s == number
end

def float?(number)
  number.to_f.to_s == number
end

def begin_msg(message)
  puts "=> #{message}"
end

def valid_num?(number)
  integer?(number) || float?(number)
end

begin_msg('Welcome to the Loan Calculator!')
begin_msg('Please enter your name: ')
name = ''

loop do
  name = gets.chomp
  break unless name.empty?
  begin_msg('Please give me a valid name.')
end

loop do
  loan_duration = ''
  apr = ''
  total_loan_amount = ''
  begin_msg("Hi there, #{name}.")
  begin_msg('Before we calculate, I need some information from you.')
  begin_msg('Please give me your loan duration in years: ')
  begin_msg('You may use decimals: half a year => 0.5 ')
  loan_duration = ''

  loop do
    loan_duration = gets.chomp
    break if valid_num?(loan_duration)
    begin_msg('Error: please give me the loan duration in years.')
    begin_msg('You may use decimals: half a year => 0.5 ')
  end

  begin_msg("Thank you, #{name}.")
  begin_msg('Now, I need your Annual Percentage Rate (APR).')
  begin_msg('For example, if you have a 4.75 percent APR, type in: 4.75 ')
  apr = ''

  loop do
    apr = gets.chomp
    break if valid_num?(apr)
    begin_msg('Error: please give me the APR. Examples: 3.5, 4: ')
  end

  begin_msg("Almost there, #{name}.")
  begin_msg('I need one more thing: your total loan amount with NO commas: ')
  total_loan_amount = ''

  loop do
    total_loan_amount = gets.chomp
    break if valid_num?(total_loan_amount)
    begin_msg('Error: please give me the total amount of your loan.')
  end

  begin_msg('Calculating Monthly Interest Rate and Converting...')

  l_d_m = loan_duration.to_f * 12
  m_i_r = ((apr.to_f / loan_duration.to_f) / 100.0)
  t_l_a = total_loan_amount.to_f

  begin_msg('Calculating Monthly Payment...')
  monthly_payment = t_l_a * (m_i_r / (1 - (1 + m_i_r)**-l_d_m))
  monthly_payment = monthly_payment.round(2)
  begin_msg("Your monthly payment will be: $#{monthly_payment}.")
  begin_msg('Would you like to run this calculator again? Y if YES: ')
  answer = gets.chomp
  break unless answer.casecmp('Y').zero?
end

begin_msg("Thank you for your business, #{name}. Good luck!")
