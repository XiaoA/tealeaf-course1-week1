require 'pry'
# Use a for...while loop to allow the user to play as many times as he/she wants
begin
  puts "Let's play 'Rock, Paper, Scissors!'"
  puts "Please choose (r) for rock, (p) for paper, or (s) for scissors."
  
  # Initialize user's throw
  usr_throw = gets.chomp
  
  # Assign value to user's throw
  usr_val = Random.new_seed
  
  # Assign value to computer's throw
  comp_val = Random.new_seed 
  
  # Determine who won
  if (usr_val > comp_val) && (usr_throw == "r")
    puts "You: rock  | Me: scissors"
    puts "=> You win!"
  elsif (usr_val > comp_val) && (usr_throw == "p")
    puts "You: paper | Me: rock"
    puts "=> You win!"
  elsif (usr_val > comp_val) && (usr_throw == "s")
    puts "You: scissors | Me: paper"
    puts "=> You win!"
  elsif (usr_val < comp_val) && (usr_throw == "r")
    puts "You: rock! | Me: paper"
    puts "=> You lose!"
  elsif (usr_val < comp_val) && (usr_throw == "p")
    puts "You: paper | Me: scissors"
    puts "=> You lose!"
  elsif (usr_val < comp_val) && (usr_throw == "s")
    puts "You: scissors | Me: rock"
    puts "=> You lose!"
  elsif (usr_val == comp_val)
    puts "It's a tie! Try again!"
  end
  
  # Offer a rematch
  puts "Would you like to play again? (y/n)"
  play = gets.chomp
end while play == "y"
