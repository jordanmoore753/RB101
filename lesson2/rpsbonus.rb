valid_choices = %w(r p sc l sp)

WIN_OPTIONS = { 'rock' => %w(scissors lizard),
                'paper' => %w(rock spock),
                'scissors' => %w(paper lizard),
                'lizard' => %w(spock paper),
                'spock' => %w(rock scissors) }.freeze

@player_win_total = 0
@comp_win_total = 0

def prompt(message)
  puts "=> #{message}"
end

def prompt_result(words)
  puts "*** #{words} ***"
end

def prompt_error(error)
  puts "!!! #{error} !!!"
end

def add_win_player
  @player_win_total += 1
end

def add_win_computer
  @comp_win_total += 1
end

def check_display_game_result(player, computer)
  if WIN_OPTIONS[player].include?(computer)
    prompt('Player wins.')
    add_win_player
  elsif WIN_OPTIONS[computer].include?(player)
    prompt('Computer wins.')
    add_win_computer
  else
    prompt('Tie.')
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

until @player_win_total == 5 || @comp_win_total == 5
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

  prompt("Player chose: #{player_choice}; Computer chose: #{computer_choice}.")
  check_display_game_result(player_choice, computer_choice)
  prompt_result("Player: #{@player_win_total}. Computer: #{@comp_win_total}.")

end

prompt('Thank you for playing. Shutting down.')
