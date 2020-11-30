require 'colorize' 

class Person
     attr_accessor :name, :wallet #this allows for this data to be accessed in multiple places
    def initialize
        puts "Tell me your name".colorize(:magenta)
        @name = gets.strip
        @wallet = 100.0
    end 
end 
