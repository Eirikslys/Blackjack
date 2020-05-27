require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

def ask 
    puts "would you like a card?"
    player_input = gets.chomp
    player_input.include?("yes") || player_input.include?("y")  ? true : false
end

def game
    bank_score = pick_bank_score
    player_score = 0
    running = true
    while running
        player_score += pick_player_card
        puts state_of_the_game(player_score, bank_score)
        if player_score > 20 || player_score > bank_score || !ask
            running = false 
            end_game_message(player_score, bank_score)
        end
    end
end


def initializer
    bank_score = pick_bank_score
    player_score = 0
    if ask 
        game 
    else 
        end_game_message(player_score, bank_score)
    end
end 
initializer
#puts ask 
#end_game_message(player_score, bank_score)


#declare a method that should check if the player busts or says no, if so run the endgame message.
#If none of the above, make a loop. run pick a card and add it to player score, 
#puts a message asking if the player wants to pick a card. 