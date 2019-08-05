require('pry')

def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
    rand(1..11)
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
     first = deal_card
     second = deal_card
     total = first + second
     display_card_total(total)
     return total
end

def hit?(current_card_total)
  prompt_user
  answer = get_user_input
  if answer == 'h'
   return deal_card + current_card_total
  end 
  # binding.pry
  if answer == 's'
   return current_card_total
  end  
  if (answer != 'h') && (answer != 's')
    invalid_command
  end
  # binding.pry
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_card_total = initial_round
  current_card_total = hit?(current_card_total)
  display_card_total(current_card_total)
  until current_card_total > 21 do 
    current_card_total  = hit?(current_card_total)
  end
  end_game(current_card_total)
end
    
