# A simple Tic, Tac, Toe game, built with Ruby

require 'pry'

board = {1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " "}     

def empty_squares(board)
  board.select {|k, v| v ==  " " }.keys
end

def player_picks_square(board)
  begin
    puts "Pick a square (1 ~ 9)."
    position = gets.chomp.to_i
  end until empty_squares(board).include?(position)
  board[position] = 'X'
end

def computer_picks_square(board)
  position = empty_squares(board).sample
  board[position] = 'O'
end

# def check_for_winner(board)
#   winning_squares = [[1, 2, 3], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [4, 5, 6], [7, 8, 9]]
#   winning_squares.each do |line|
#     case
#     when board.values_at(*line).count('X') == 3
#       return 'Player'
#     when board.values_at(*line).count('O') == 3
#       return 'Computer'
#     else
#       return nil
#     end
#   end
# end

def check_for_winner(board)
  winning_squares = [[1, 2, 3], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [4, 5, 6], [7, 8, 9]]
  winning_squares.each do |line|
    return "Player" if board.values_at(*line).count("X") == 3
    return "Computer" if board.values_at(*line).count('O') == 3
  end
  nil
end

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

loop do
  begin
    draw_board(board)
    player_picks_square(board)
    check_for_winner(board)
    draw_board(board)
    computer_picks_square(board)
    winner = check_for_winner(board)
  end until winner || empty_squares(board).empty?

if winner
  puts "#{winner} won!"
else
  puts "It's a tie!"
end

puts "Would you like to play again? (Y/N)"
play_again = gets.chomp.upcase == 'Y'

end






