require_relative 'pokemon_class'

class Player
    attr_accessor :movement, :input_options

    def initialize
        @movement = true  
    end

    def move
        while @movement == true

            puts "Where would you like to go?"
            puts "'LEFT', 'RIGHT', 'UP', 'DOWN' or 'QUIT'".colorize(:blue)
            input_options = gets.chomp

            if input_options == "LEFT"# || "left" || "Left" || "l" || "L"
                puts "You moved left".colorize(:green)
                @movement = false
            end

            if input_options == "RIGHT"
                puts "You moved right".colorize(:green)
                @movement = false
            end

            if input_options == "UP"
                puts "You moved up".colorize(:green)
                @movement = false
            end

            if input_options == "DOWN"
                puts "You moved down".colorize(:green)
                @movement = false
            end 

            if input_options == "QUIT"
                system 'clear'
            end

            if input_options == ""
                puts "Invalid input"
                @movement = false
            end
        end
    end
end

