def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  entry = get_user_input

  if entry == "h"
    total += deal_card
  end
  
  if entry != "h" && entry != "s"
    invalid_command
    prompt_user
    entry = get_user_input
  end
total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_hand = initial_round
  if current_hand <= 21
    current_hand = hit?(current_hand)
    display_card_total(current_hand)
  end
end_game(current_hand)
end
    
