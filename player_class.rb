require_relative 'pokemon_class'

class Player
    attr_accessor :movement, :input_options

    def initialize
        @movement = true  
    end

    def move
        while @movement == true

        puts "Where would you like to go?"
        puts "LEFT, RIGHT, UP or DOWN"
        input_options = gets.chomp

            if input_options == "LEFT"
                puts "You moved left"
                @movement = false
            end

            if input_options == "RIGHT"
                puts "You moved right"
                @movement = false
            end

            if input_options == "UP"
                puts "You moved up"
                @movement = false
            end

            if input_options == "DOWN"
                puts "You moved down"
                @movement = false
            end 

            ### need to put invalid input here ###
            
        end
    end
end

