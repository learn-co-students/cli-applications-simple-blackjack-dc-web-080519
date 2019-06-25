# fluff function to start game
def welcome
  puts "Welcome to the Blackjack Table"
end

# delivers random number between 1 and 11 - called later
def deal_card
  rand(1..11)
end

# displays current card total - called later
def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

# displays instructions - called later
def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

# called any time user input required
def get_user_input
  gets.chomp
end

# last called function in runner
def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

# deals 2 cards, shows total, and returns total as value
def initial_round
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # get user input
  prompt_user
  user_input = get_user_input
  # if user stays, return value of hand as-is
  if user_input == "s"
    card_total
  # if user hits, add value of another random card
  elsif user_input == "h"
    card_total += deal_card
  # if unrecognized input, error message and back to top of function
  else
    invalid_command
    hit?(card_total)
  end
  card_total
end

# error message
def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  # run #initial_round and store value in hand variable
  hand = initial_round
  while hand < 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
