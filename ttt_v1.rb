# A simple Tic, Tac, Toe game, built with Ruby
require 'pry'

# 1. we create a hash as the data structure to represent the board
board = {1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " "}     

# 2. we draw the board on the screen using puts, and also, we wrap them into a method, so that we could call it later (every time, either player or computer places a piece, we will need to call this method, to re-draw the board)
def draw_board(board)
  system 'clear'
  puts "      |      |      "
  puts "#{board[1]}     |#{board[2]}     |#{board[3]}     "
  puts "------+------+-------"
  puts "      |      |      "
  puts "#{board[4]}     |#{board[5]}     |#{board[6]}     "
  puts "------+------+-------"
  puts "      |      |      "
  puts "#{board[7]}     |#{board[8]}     |#{board[9]}     "
end


# 3. let's create a method for player to place a piece, placing a piece is essentially settting the board hash value


def player_places_piece(board) # pass in board hash as the parameter, so that we can set it within the method
  position = gets.to_i # get the user input to decide where player wants to place his or her piece
  board[position] = 'X' # set the hash value
end


# 4. same thing with computer placing a piece, instead of taking user input, the position number should be generated randomly
def computer_places_piece(board)
end

# 5. do...while (it should be begin...end until here) loop, to keep the game running until there's a winner or board gets full
draw_board(board)
while true
  player_places_piece(board)
  computer_places_piece(board)
  draw_board(board) # to re-draw the board
end # until winner || board_full? # it's obvious we will need a method to check for returning the winner, and another to check if the board is full (all the values were set)
