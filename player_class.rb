require_relative 'pokemon_class'

class Player
    attr_accessor :movement, :input_options

    def initialize
        @movement = true  
        puts "Lets play!"
    end

    def move
        while @movement == true

        puts "Where would you like to go?"
        puts "LEFT, RIGHT, UP or DOWN"
        input_options = gets.chomp

            if input_options == "LEFT"
                puts "You moved left"
            end

            if input_options == "RIGHT"
                puts "You moved right"
            end

            if input_options == "UP"
                puts "You moved up"
            end

            if input_options == "DOWN"
                puts "You moved down"
            end    
        end
    end
end

