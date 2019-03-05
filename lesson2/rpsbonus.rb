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

def check_game_result(player, computer)
  if WIN_OPTIONS[player].include?(computer)
    "Player wins with #{player}."
  elsif WIN_OPTIONS[computer].include?(player)
    "Computer wins with #{computer}."
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

  display_result = ''
  player_win_total = 0
  comp_win_total = 0

  until player_win_total == WIN_TOTAL || comp_win_total == WIN_TOTAL
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
    display_result = check_game_result(player_choice, computer_choice)
    prompt(display_result.to_s)
    if display_result == "Player wins with #{player_choice}."
      player_win_total += 1
    elsif display_result == "Computer wins with #{computer_choice}."
      comp_win_total += 1
    end

    prompt_result("Player: #{player_win_total}. Computer: #{comp_win_total}.")
    break if end_game(player_win_total, comp_win_total)

    prompt('Play further? Type Y to coninue: ')
    decision = gets.chomp
    decision.casecmp('Y').zero? ? system('clear') : break

  end

  if player_win_total == WIN_TOTAL
    ending_prompt('Player wins the game.')
  elsif comp_win_total == WIN_TOTAL
    ending_prompt('Computer wins the game.')
  end
  break
end

prompt('Thank you for playing. Shutting down.')
