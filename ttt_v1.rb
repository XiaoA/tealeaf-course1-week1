# A simple Tic, Tac, Toe game, built with Ruby

require 'pry'

board = {1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " "}     

WINNING_BOARD = [[1, 2, 3], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [4, 5, 6], [7, 8, 9]]

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

def empty_square(board)
  board.select {|k, v| v ==  " " }.keys
end

def player_places_piece(board) # pass in board hash as the parameter, so that we can set it within the method
  puts "Pick a square (1 ~ 9)."
  position = gets.to_i # get the user input to decide where player wants to place his or her piece
  board[position] = 'X' # set the hash value
end

def computer_places_piece(board)
  position = empty_square(board).sample
  board[position] = 'O'
end

def check_for_winner
  case
  when WINNING_BOARD.select
    puts "You've won!"
  when !empty_square(board)
    puts "It's a tie. Play again?"
  else
    puts "You lost. Play again?"
  end
end

begin
  draw_board(board)
  player_places_piece(board)
  check_for_winner
  empty_square(board)
  computer_places_piece(board)
  check_for_winner
end until check_for_winner == true || empty_square(board).empty?
       
while empty_square(board) == true do
  draw_board(board)
  player_places_piece(board)
  check_for_winner(board)
  computer_places_piece(board)
  check_for_winner(board)
end until check_for_winner == true || empty_square(board).empty?
                 
