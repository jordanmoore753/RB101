deck_of_cards = { '2' => { quantity: 4, value: 2 },
                  '3' => { quantity: 4, value: 3 },
                  '4' => { quantity: 4, value: 4 },
                  '5' => { quantity: 4, value: 5 },
                  '6' => { quantity: 4, value: 6 },
                  '7' => { quantity: 4, value: 7 },
                  '8' => { quantity: 4, value: 8 },
                  '9' => { quantity: 4, value: 9 },
                  '10' => { quantity: 4, value: 10 },
                  'Jack' => { quantity: 4, value: 10 },
                  'Queen' => { quantity: 4, value: 10 },
                  'King' => { quantity: 4, value: 10 },
                  'Ace' => { quantity: 4, value: 11 } }

WINNING_SCORE = 21
WIN_MATCH_SCORE = 5
current_player = 'player'
player_cards = []
dealer_cards = []
scores = { 'player' => 0, 'dealer' => 0 }

def blank_line
  puts '------------------------'
end

def prompt(message)
  puts "=> #{message}"
end

def rules
  prompt("Welcome to #{WINNING_SCORE}.")
  prompt('Draw one card by typing: Hit.')
  prompt('End your turn by typing: Stay.')
  prompt("Get your hand's total equal to or close to #{WINNING_SCORE}.")
  prompt('If you go over, you lose.')
  prompt('Ace: 1 or 11; Royals: 10, 2-10: Face Value.')
  prompt("'First player to #{WIN_MATCH_SCORE} wins.")
end

def display_dealer(de_card, pl_card)
  puts 'THE HAPPY CA$INO'
  puts '-----------------'
  puts '  (-_-)  Dealer'
  puts '-----------------'
  puts " |#{de_card.first}| |?| "
  puts '-----------------'
  puts "Player cards: #{pl_card}"
  puts '------------------------'
  puts 'Options: Hit - Stay     '
end

def deal_initial_cards(deck, pl_card, de_card)
  shuffled_deck = deck.keys
  2.times do
    pl_card << shuffled_deck.sample
    de_card << shuffled_deck.sample
  end
end

def update_card_quantity_at_start(deck, pl_card, de_card)
  pl_card.each do |card|
    deck[card][:quantity] -= 1
  end
  de_card.each do |card|
    deck[card][:quantity] -= 1
  end
end

def update_card_quantity_during_match(deck, curr_hand)
  last_card = curr_hand.last
  deck[last_card][:quantity] -= 1
end

def shuffle(deck)
  shuffled_deck_hash = {}
  available_cards = []
  deck.map do |key, _|
    if deck[key][:quantity] >= 1
      shuffled_deck_hash[key] = deck[key][:quantity]
    end
  end
  shuffled_deck_hash.map { |key, value| value.times { available_cards << key } }
  available_cards
end

def hit(deck, pl_card, de_card, curr_player)
  avail_card = shuffle(deck)
  if player_turn?(curr_player)
    pl_card << avail_card.sample
  else
    de_card << avail_card.sample
  end
end

def player_turn?(curr_player)
  curr_player == 'player'
end

def dealer_turn?(curr_player)
  curr_player == 'dealer'
end

def get_hand_total_value(deck, curr_hand)
  total_of_cards = []
  curr_hand.each do |card|
    total_of_cards << deck[card][:value]
  end
  calculate_aces(curr_hand, total_of_cards)
end

def calculate_aces(curr_hand, total)
  if curr_hand.include?('Ace') && total.flatten.reduce(:+) > WINNING_SCORE
    total = total.map do |num|
      num = 1 if num == 11

      num
    end
  end
  total.flatten.reduce(:+)
end

def alternate_player(curr_player)
  if player_turn?(curr_player)
    'dealer'
  else
    'player'
  end
end

def reset_player
  'player'
end

def check_for_win(curr_hand)
  WINNING_SCORE - curr_hand
end

def display_who_won(final_pl, final_de)
  if player_won?(final_pl, final_de)
    prompt('Player won.')
  elsif dealer_won?(final_pl, final_de)
    prompt('Dealer won.')
  else
    prompt('Tie.')
  end
  prompt("Player hand total: #{final_pl}. Dealer hand total: #{final_de}.")
end

def player_won?(final_pl, final_de)
  if final_de > WINNING_SCORE
    true
  elsif final_pl == final_de
    false
  elsif final_pl == WINNING_SCORE
    true
  elsif final_pl > final_de && final_pl <= WINNING_SCORE
    true
  end
end

def dealer_won?(final_pl, final_de)
  if final_pl > WINNING_SCORE
    true
  elsif final_pl == final_de
    false
  elsif final_de == WINNING_SCORE
    true
  elsif final_de > final_pl && final_de <= WINNING_SCORE
    true
  end
end

def give_point_win(final_pl, final_de, hsh)
  if dealer_won?(final_pl, final_de)
    hsh['dealer'] += 1
  elsif player_won?(final_pl, final_de)
    hsh['player'] += 1
  end
end

def display_score(hsh)
  prompt("Player: #{hsh['player']}. Dealer: #{hsh['dealer']}.")
end

def reset_deck_quantity(deck)
  deck.map do |key, _|
    deck[key][:quantity] = 4
  end
end

def reset_hands(pl_card, de_card)
  pl_card_amount = pl_card.size
  de_card_amount = de_card.size
  pl_card.pop(pl_card_amount)
  de_card.pop(de_card_amount)
end

def end_game(hsh)
  hsh['player'] >= WIN_MATCH_SCORE || hsh['dealer'] >= WIN_MATCH_SCORE
end

def display_game_winner(hsh)
  if player_won_match?(hsh)
    prompt('Player wins the game.')
  else
    prompt('Dealer wins the game.')
  end
end

def player_won_match?(hsh)
  hsh['player'] == WIN_MATCH_SCORE
end

def dealer_won_match?(hsh)
  hsh['dealer'] == WIN_MATCH_SCORE
end

def player_hit?(input)
  input == 'h'
end

def player_stay?(input)
  input == 's'
end

# rubocop:disable Style/MultipleComparison
def valid_play_again_answer?(input)
  input == 'y' || input == 'n'
end
# rubocop:enable Style/MultipleComparison

rules

loop do
  deal_initial_cards(deck_of_cards, player_cards, dealer_cards)
  update_card_quantity_at_start(deck_of_cards, player_cards, dealer_cards)
  display_dealer(dealer_cards, player_cards)
  choice = ''

  loop do
    if get_hand_total_value(deck_of_cards, player_cards) == WINNING_SCORE
      break
    else
      blank_line
      prompt('Type H for Hit, S for Stay.')
      blank_line
      choice = gets.chomp.to_s.downcase
      if player_hit?(choice)
        hit(deck_of_cards, player_cards, dealer_cards, current_player)
        update_card_quantity_during_match(deck_of_cards, player_cards)
        system 'clear'
        if get_hand_total_value(deck_of_cards, player_cards) > WINNING_SCORE
          prompt('Player busts.')
          break
        elsif get_hand_total_value(deck_of_cards, player_cards) == WINNING_SCORE
          break
        else
          display_dealer(dealer_cards, player_cards)
        end
      elsif player_stay?(choice)
        current_player = alternate_player(current_player)
        break
      else
        prompt('Please type a valid input: h or s.')
      end
    end
  end

  if dealer_turn?(current_player)
    loop do
      if get_hand_total_value(deck_of_cards, dealer_cards) >= 17
        prompt('Dealer stays.')
        break
      else
        prompt('Dealer draws a card.')
        hit(deck_of_cards, player_cards, dealer_cards, current_player)
        update_card_quantity_during_match(deck_of_cards, dealer_cards)
        get_hand_total_value(deck_of_cards, dealer_cards)
      end
      if get_hand_total_value(deck_of_cards, dealer_cards) > WINNING_SCORE
        prompt('Dealer busts.')
        break
      elsif get_hand_total_value(deck_of_cards, player_cards) == WINNING_SCORE
        break
      end
    end
  end

  system 'clear'

  display_dealer(dealer_cards, player_cards)
  new_play_hand = get_hand_total_value(deck_of_cards, player_cards)
  new_deal_hand = get_hand_total_value(deck_of_cards, dealer_cards)
  display_who_won(new_play_hand, new_deal_hand)
  give_point_win(new_play_hand, new_deal_hand, scores)

  display_score(scores)
  current_player = reset_player
  reset_hands(player_cards, dealer_cards)
  reset_deck_quantity(deck_of_cards)

  if player_won_match?(scores) || dealer_won_match?(scores)
    display_game_winner(scores)
    prompt('Thank you for playing.')
    break
  end

  prompt "Play again? 'Y' to continue, 'N' to stop."
  answer = ''

  loop do
    answer = gets.chomp.downcase
    break if valid_play_again_answer?(answer)

    prompt("Please input 'Y' or 'N'.")
  end

  if answer == 'n'
    prompt('Thank you for playing.')
    break
  else
    system 'clear'
  end
end
