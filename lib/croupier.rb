require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
if player_score == 21 then puts "Black Jack"
elsif player_score == bank_score then puts "Push"
elsif player_score > 21 then puts "Bust! You lost!"
elsif player_score > bank_score then puts "You won!"
else puts "you lose, you loser!"
end
  
end
