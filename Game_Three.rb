

class Game_Three              # this is the slots game solely based randomly on winning or losing  

    def initialize(person)
        @person = person
    prompt 
    end 


def prompt
   puts "This game is slots, when you pull the slot it will tell you if you win or lose".colorize(:magenta)
   puts "When you press 1 the game will begin".colorize(:magenta)
   
   pull = gets.to_f
   if pull == 1
     rand(2..3)
    elsif pull != 1
    puts "That is invalid".colorize(:magenta)
    prompt
   end 

   result = rand(2..3)
   if result == 2 
    puts "Congratulations You win $10".colorize(:magenta)
    @person.wallet += 10
   elsif result == 3
    puts "Dang You lose $10".colorize(:magenta)
    @person.wallet -= 10
   end 

   

   puts "Would you like to play another again? Press 1. for Yes 2. for No.".colorize(:magenta)
        choice = gets.to_f
        if choice == 1 
         prompt
        elsif choice == 2
         CasinoJones(display_menu)
        end 
    end 
end 