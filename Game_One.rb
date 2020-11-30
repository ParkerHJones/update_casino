


class Game_One  # this is the odds or even created game
    def initialize(person)
    @person = person
    play
    end 

    def play
        puts "The game is Odds or evens, we roll dice, if you guess whether the number will be odd or even correctly, you win.".colorize(:magenta)
        puts "Choose your guess by entering 1. For Odds or 2. For Evens".colorize(:magenta)
        choice = gets.to_f
        puts rand(1..2)

        if choice == rand(1..2)
            puts "Nice! You won $10"
            @person.wallet += 10 #goal is to add 10 to bankroll if won
        elsif choice != rand(1..2)
            puts "oops! you lost $10"
            @person.wallet -= 10
              #goal is to take ten out if losing
        end 

        puts "Would you like to play again? Press 1. for Yes 2. for No." 
        choice = gets.to_f
        if choice == 1 
         play
        elsif choice == 2
        puts "go to menu"
        Casino.Jones(display_menu)
        end 
    end 
end