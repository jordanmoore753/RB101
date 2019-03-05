valid_choices = %w(r p sc l sp)

WIN_TOTAL = 5

WIN_OPTIONS = { 'rock' => %w(scissors lizard),
                'paper' => %w(rock spock),
                'scissors' => %w(paper lizard),
                'lizard' => %w(spock paper),
                'spock' => %w(rock scissors) }.freeze

def prompt(message)
  puts "=> #{message}"
end

def prompt_result(words)
  puts "*** #{words} ***"
end

def prompt_error(error)
  puts "!!! #{error} !!!"
end

def ending_prompt(words)
  puts "*^^^^^* #{words} *^^^^^*"
end

def player_won?(player, computer)
  WIN_OPTIONS[player].include?(computer)
end

def computer_won?(player, computer)
  WIN_OPTIONS[computer].include?(player)
end

def display_game_result(player, computer)
  if player_won?(player, computer)
    prompt("Player wins with #{player}.")
    computer_won?(player, computer) == false
  elsif computer_won?(player, computer)
    prompt("Computer wins with #{computer}.")
    player_won?(player, computer) == false
  else
    'Tie.'
  end
end

def lengthen_choice(choice)
  case choice
  when 'r' then 'rock'
  when 'l' then 'lizard'
  when 'p' then 'paper'
  when 'sc' then 'scissors'
  when 'sp' then 'spock'
  end
end

def end_game(pwintotal, cwintotal)
  pwintotal == WIN_TOTAL || cwintotal == WIN_TOTAL
end

def player_won_match?(playertotal)
  playertotal == 5 
end

def computer_won_match?(computertotal)
  computertotal == 5 
end

prompt('Welcome. Please input your name: ')
name = ''

loop do
  name = gets.chomp
  break unless name.empty?
  prompt_error('Please put in a name.')
end

loop do
  prompt("Welcome, #{name}. This is a multi-round game of RPSLS.")
  prompt('Whoever reaches 5 first wins the game.')

  player_win_total = 0
  comp_win_total = 0

  until player_won_match?(player_win_total) ||
        computer_won_match?(comp_win_total)

    player_choice = ''
    loop do
      prompt("Choose one: #{valid_choices.join(', ')}")
      prompt('r: rock, l: lizard, p: paper, sc: scissors, sp: spock')
      player_choice = gets.chomp.downcase

      break if valid_choices.include?(player_choice)
      prompt_error('Error: Choose: r, l, p, sc, or sp.')
    end

    player_choice = lengthen_choice(player_choice)
    computer_choice = valid_choices.sample
    computer_choice = lengthen_choice(computer_choice)

    prompt("#{player_choice} vs. #{computer_choice}.")
    display_game_result(player_choice, computer_choice)

    if player_won?(player_choice, computer_choice)
      player_win_total += 1
    elsif computer_won?(player_choice, computer_choice)
      comp_win_total += 1
    end

    prompt_result("Player: #{player_win_total}. Computer: #{comp_win_total}.")
    break if end_game(player_win_total, comp_win_total)

    prompt('Play further? Type Y to coninue: ')
    decision = gets.chomp
    decision.casecmp('Y').zero? ? system('clear') : break

  end

  if player_won_match?(player_win_total)
    ending_prompt('Player wins the game.')
  elsif computer_won_match?(comp_win_total)
    ending_prompt('Computer wins the game.')
  end
  break
end

prompt('Thank you for playing. Shutting down.')
