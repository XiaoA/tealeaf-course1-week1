# A simple Tic, Tac, Toe game, built with Ruby

require 'pry'

board = {1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " "}     

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
  board.select {|k, v| v ==  " " }.to_a
end


def player_places_piece(board) # pass in board hash as the parameter, so that we can set it within the method
  puts "Pick a square (1 ~ 9)."
  position = gets.to_i # get the user input to decide where player wants to place his or her piece
  board[position] = 'X' # set the hash value
end

def computer_places_piece(board)
  position = empty_square(board).sample
end

def check_for_winner(board)
  if 
    puts "You win!!!"
  elsif
    puts "Sorry, you lose..."
  else
    puts "It's a draw!"
  end
       
       # begin
       #   draw_board(board)
       #   player_places_piece(board)
       #   empty_square(board)
       #   computer_places_piece(board)
       # end
       
       
       # 5. do...while (it should be begin...end until here) loop, to keep the game running until there's a winner or board gets full
       draw_board(board)
       while true
         player_places_piece(board)
         computer_places_piece(board)
         draw_board(board) # to re-draw the board
       end # until winner || board_full? # it's obvious we will need a method to check for returning the winner, and another to check if the board is full (all the values were set)
