# A simple Tic, Tac, Toe game, built with Ruby
require 'pry'

board_position = {1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " "}     

puts "      |      |      "
puts "#{board_position[1]}     |#{board_position[2]}     |#{board_position[3]}     "
puts "------+------+-------"
puts "      |      |      "
puts "#{board_position[4]}     |#{board_position[5]}     |#{board_position[6]}     "
puts "------+------+-------"
puts "      |      |      "
puts "#{board_position[7]}     |#{board_position[8]}     |#{board_position[9]}     "
