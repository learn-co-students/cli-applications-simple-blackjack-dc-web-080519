def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  round_one = deal_card + deal_card
  display_card_total(round_one)
  return round_one
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input

  if user_input == "h"
    card_total += deal_card

  elsif user_input == "s"
    card_total
  else
    invalid_command
    hit?(card_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21

    card_total = hit?(card_total)

    display_card_total(card_total)

  end
  end_game(card_total)
end
