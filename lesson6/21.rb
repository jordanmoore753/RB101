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
current_player = 'player'
play_value = 0
deal_value = 0
player_cards = []
dealer_cards = []
scores = { 'player' => 0, 'dealer' => 0 }

def prompt(message)
  puts "=> #{message}"
end

def display_dealer(de_card, pl_card)
  puts ''
  puts 'THE HAPPY CA$INO'
  puts '-----------------'
  puts '  (-_-)  Dealer'
  puts '-----------------'
  puts " |#{de_card.first}| |?| "
  puts '-----------------'
  puts "Player cards: #{pl_card}"
  puts '------------------------'
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

def hit(deck, pl_card, de_card, curr_player)
  shuffled_deck_hash = {}
  available_cards = []
  deck.map do |key, _|
    if deck[key][:quantity] >= 1
      shuffled_deck_hash[key] = deck[key][:quantity]
    end
  end
  shuffled_deck_hash.map { |key, value| value.times { available_cards << key } }
  if curr_player == 'player'
    pl_card << available_cards.sample
  else
    de_card << available_cards.sample
  end
end

def get_hand_total_value(deck, curr_hand)
  total_of_cards = []
  curr_hand.each do |card|
    total_of_cards << deck[card][:value]
  end
  calculate_aces(curr_hand, total_of_cards)
end

def calculate_aces(curr_hand, total)
  ace_index = []
  if curr_hand.include?('Ace') && total.flatten.reduce(:+) > 21
    total.each_with_index { |val, idx| ace_index << idx if val == 11 }
    if ace_index.size == 1 && total.size >= 3
      total[ace_index.first] = 1
    elsif ace_index.size >= 2 && total.size >= 3
      total[ace_index.first, 2] = 1
    end
  end
  total.flatten.reduce(:+)
end

def alternate_player
  'dealer'
end

def reset_player
  'player'
end

def dealer_check_value(de_card)
  de_card < 17
end

def check_for_win(curr_hand)
  WINNING_SCORE - curr_hand
end

def who_won?(final_pl, final_de)
  if final_pl == final_de
    prompt('Tie.')
  elsif final_pl < 0
    prompt('Player busts.')
  elsif final_de < 0
    prompt('Dealer busts.')
  elsif final_pl < final_de
    prompt('Player won.')
  elsif final_pl.zero? && de_card != 0
    prompt('Player won.')
  else
    prompt('Dealer won. ')
  end
  prompt("Player's hand value: #{final_pl}, Dealer's hand value: #{final_de}")
end

def give_point(pl_card, de_card, hsh)
  if pl_card == de_card

  elsif pl_card < de_card
    hsh['player'] += 1
  elsif pl_card.zero? && de_card != 0
    hsh['player'] += 1
  else
    hsh['dealer'] += 1
  end
end

def give_point_bust(pl_card, hsh)
  if pl_card < 0
    hsh['dealer'] += 1
  else
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
  hsh['player'] >= 5 || hsh['dealer'] >= 5
end

loop do # main game loop
  deal_initial_cards(deck_of_cards, player_cards, dealer_cards)
  update_card_quantity_at_start(deck_of_cards, player_cards, dealer_cards)
  display_dealer(dealer_cards, player_cards)
  choice = ''

  loop do # player
    puts 'Options: Hit - Stay     '
    puts '------------------------'
    prompt('Which option do you choose?')
    choice = gets.chomp.to_s.downcase

    if choice == 'hit'
      hit(deck_of_cards, player_cards, dealer_cards, current_player)
      update_card_quantity_during_match(deck_of_cards, player_cards)
      system 'clear'
      if get_hand_total_value(deck_of_cards, player_cards) > WINNING_SCORE
        prompt('Player busts.')
        break
      else
        display_dealer(dealer_cards, player_cards)
      end
    elsif choice == 'stay'
      break
    end
  end

  if get_hand_total_value(deck_of_cards, player_cards) > WINNING_SCORE

  else
    current_player = alternate_player
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
      end
    end
  end

  system 'clear'
  display_dealer(dealer_cards, player_cards)
  new_play_hand = get_hand_total_value(deck_of_cards, player_cards)
  new_deal_hand = get_hand_total_value(deck_of_cards, dealer_cards)
  play_value = check_for_win(new_play_hand)
  deal_value = check_for_win(new_deal_hand)
  if new_deal_hand > WINNING_SCORE || new_play_hand > WINNING_SCORE
    give_point_bust(play_value, scores)
  else
    give_point(play_value, deal_value, scores)
  end

  who_won?(play_value, deal_value)
  display_score(scores)
  current_player = reset_player
  reset_hands(player_cards, dealer_cards)
  reset_deck_quantity(deck_of_cards)

  if end_game(scores)
    prompt('Thank you for playing.')
    break
  end

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

  system 'clear'
  if answer == 'n'
    break
  end
end
