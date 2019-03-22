CHOICE = ['player', 'computer', 'choose']
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

current_player = 'player'
scores = { 'player' => 0, 'computer' => 0 }
choice_option = CHOICE[2]

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
    square = gets.chomp
    break if empty_squares(brd).include?(square.to_i) &&
             square == square.to_i.to_s

    prompt 'Choose a valid square.'
  end

  square = square.to_i
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

def display_score(score)
  prompt("Player: #{score['player']}. Computer: #{score['computer']}")
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

def end_game(hsh)
  hsh['player'] >= 5 || hsh['computer'] >= 5
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

def place_piece!(brd, current_play)
  if current_play == 'player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def who_won?(brd, current_play, hsh)
  if someone_won?(brd)
    case current_play
    when 'player' then user_add_win(hsh)
    when 'computer' then comp_add_win(hsh)
    end
  end
end

def user_add_win(hsh)
  hsh['player'] += 1
end

def comp_add_win(hsh)
  hsh['computer'] += 1
end

def alternate_player(current_play)
  return 'computer' if current_play == 'player'

  'player'
end

def reset_player(_current_play)
  'player'
end

loop do
  board = initalize_board
  display_board(board)

  if choice_option == CHOICE[2]
    prompt('Would you like to move first? Y for yes, N for no:')

    loop do
      ans = gets.chomp.downcase

      if ans == 'n'
        computer_places_piece!(board)
        break
      elsif ans == 'y'
        break
      else
        prompt('Please input Y or N.')
      end
    end
  elsif choice_option == CHOICE[1]
    computer_places_piece!(board)
  end

  loop do
    display_board(board)
    place_piece!(board, current_player)
    who_won?(board, current_player, scores)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  system 'clear'
  display_board(board)
  display_score(scores)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt 'Tie!'
  end

  break if end_game(scores)

  current_player = reset_player(current_player)
  prompt "Play again? 'Y' to continue, 'N' to stop."
  answer = ''

  loop do
    answer = gets.chomp.downcase
    if answer == 'y'
      break
    elsif answer == 'n'
      break
    else
      prompt("Please input 'Y' or 'N'.")
    end
  end

  next if answer == 'y'

  break
end

prompt 'Thank you for playing.'
