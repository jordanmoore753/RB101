CHOICE = ['player', 'computer', 'choose']
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

current_player = [1]
usr_score = [0]
comp_score = [0]
choice_option = ''

def prompt(message)
  puts "=> #{message}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "Player: #{PLAYER_MARKER}. Computer: #{COMPUTER_MARKER}."
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end

def initalize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}."
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt 'Choose a valid square.'
  end

  brd[square] = 'X'
end

def computer_places_piece!(brd)
  if find_at_risk_square(brd).is_a? Integer
    square = find_at_risk_square(brd)
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def display_score(player, computer)
  prompt("Player: #{player[0]}. Computer: #{computer[0]}")
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def end_game(player, computer)
  player[0] >= 5 || computer[0] >= 5
end

def joinor(arr, punctuation=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(punctuation)
  end
end

def create_square(arr)
  arr = arr.flatten.keep_if { |v| !v.nil? }
  arr.last
end

def find_at_risk_square(brd)
  new_array = 
    WINNING_LINES.map do |line|
      if brd.values_at(*line).count(COMPUTER_MARKER) == 2
        line.select do |key|
          if brd[key] != COMPUTER_MARKER &&
                      empty_squares(brd).include?(key)
            brd[key]
          end
        end
      elsif brd.values_at(*line).count(PLAYER_MARKER) == 2
        line.select do |key|
          if brd[key] != PLAYER_MARKER &&
                      empty_squares(brd).include?(key)
            brd[key]
          end
        end
      end
    end

  return 5 if brd[5] == INITIAL_MARKER

  create_square(new_array)
end

# rubocop:enable Metrics/AbcSize

def place_piece!(brd, current_play, user, comp)
  if current_play[0].odd? # odd means player turn
    player_places_piece!(brd)
    user[0] += 1 if someone_won?(brd)
  elsif current_play[0].even? # even means computer turn
    computer_places_piece!(brd)
    comp[0] += 1 if someone_won?(brd)
  end
end

def alternate_player(current_play)
  current_play[0] += 1 # one turn means + 1
end

def reset_player(current_play)
  current_play[0] = 1
end

loop do
  board = initalize_board
  display_board(board)
  choice_option = CHOICE[0] # this is where constant is set
  ans = ''

  if choice_option == CHOICE[2]
    prompt('Would you like to move first? Y for yes:')
    ans = gets.chomp.downcase
    
    if ans != 'y'
      computer_places_piece!(board)
    end
  elsif choice_option == CHOICE[1]
      computer_places_piece!(board)
  end

  loop do
    display_board(board)
    place_piece!(board, current_player, usr_score, comp_score)
    alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  system 'clear'
  display_board(board)
  display_score(usr_score, comp_score)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt 'Tie!'
  end

  break if end_game(usr_score, comp_score)

  reset_player(current_player)
  prompt 'Play again? (y or n)'
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt 'Thanks for playing.'
