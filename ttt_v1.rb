# A simple Tic, Tac, Toe game, built with Ruby

#############################
# Application Logic
#############################

# Game Overview
# - Needs a board, with 9 places
# - Needs to have a way for the player and the computer to take turns playing
# - Needs to take input and represent that on the board with an 'X' or an 'O'
# - Needs to declare a winner

# Game Steps
# 1. Draw a board
# 2. Assign numbers to each position/square
# 3. Get user input (which square?)
# 4. Computer chooses a square
# 5. Iterate until a winner is chosen

require 'pry'

def draw_board
  puts "      |      |      "
  puts "      |      |      "
  puts "------+------+-------"
  puts "      |      |      "
  puts "      |      |      "
  puts "------+------+-------"
  puts "      |      |      "
  puts "      |      |      "
end

draw_board


puts "Please choose a square (1 ~ 9)
player_choice = gets.chomp.to_i

    



