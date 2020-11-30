require 'colorize'
require_relative 'player'


class CasinoJones
    def initialize
    @person = person.new
    display_menu #this calls the method below of the menue to be shown
    end 

    def display_menu
            puts "Please select what you would like to do".colorize(:magenta)
            puts "You have $100 in your bankroll to begin.".colorize(:magenta)
            puts "In each game you can either win $10 per play or lose $10 per play.".colorize(:magenta)
            puts "1. Play Odds/Evens"
            puts "2. Play Low/High"
            puts "3. Play Slots"
            puts "4. Show Bankroll Balance" 
            puts "5. Exit"
        end 
end 

CasinoJones.new