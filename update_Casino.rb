require 'colorize'
require_relative 'person'
require_relative 'Game_One'


class CasinoJones
    def initialize
    @person = Person.new
    display_menu #this calls the method below of the menue to be shown
    end 

    def display_menu
        begin
            puts "Please select what you would like to do".colorize(:magenta)
            puts "You have $100 in your bankroll to begin.".colorize(:magenta)
            puts "In each game you can either win $10 per play or lose $10 per play.".colorize(:magenta)
            puts "1. Play Odds/Evens"
            puts "2. Play Low/High"
            puts "3. Play Slots"
            puts "4. Show Wallet" 
            puts "5. Exit"
            response = gets.strip.to_i
            raise "Invalid input" unless response > 0 && response < 6
            case response 
            when 1
                Game_One.new(@person)
                # todo: Odds/Evens 
            when 2
                
                # high/low
            when 3
                # slots 
            when 4
                puts "You have $#{@person.wallet}"
            when 5
                puts "See you next time"
                exit 
            else 
                raise 
            end 
            rescue StandardError => e #this line is for if they put in something wrong to playback menu
                puts e
                retry
            end 
        end 
    end 


CasinoJones.new