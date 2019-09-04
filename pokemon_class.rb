require_relative 'player_class'

class Pokemon
attr_accessor :pokemon_type, :pokemon_level, :pokemon_spawn, :current_pokemon_level, :movement
attr_accessor :current_pokemon_type, :spawn_rate, :ball_input_options, :catch_rate, :catch_pokemon

    def initialize
        @pokemon_type = ["Pikachu", "Eevee", "Psyduck", "Ekans", "Vulpix", "Squirtle", "Bulbasaur", "Charmander"]
        @pokemon_level = [1, 2, 3, 4, 5]
        @spawn_rate = rand(1..100)
    end

    def spawn_rate(pokemon_trainer)
        puts "Spawn rate number is #{@spawn_rate}".colorize(:yellow) # to be taken out, dont need to see this
        # if @spawn_rate < 30
        #     movement = false
        # end
        if @spawn_rate > 30
            pokemon_trainer.movement = true
        end
    end

    def found_pokemon(pokemon_trainer)
        if @spawn_rate < 30 # spawn rate at 30%
            puts "You found a pokemon"
            @current_pokemon_type = @pokemon_type.sample # ramdomly choose pokemon type from array
            @current_pokemon_level = @pokemon_level.sample.to_i # ramdomly choose pokemon level from array
            puts "You found a #{@current_pokemon_type}".colorize(:green)# prints random pokemon
            puts "Its level is #{@current_pokemon_level}".colorize(:green) # prints ramdom pokemon level
            pokemon_trainer.movement = false # make movement false so we cant move
        end
    end

    
    def throw_run(pokemon_trainer)
        if @spawn_rate < 30
            #if we have found a pokemon
                puts "'THROW' Pokeball or 'RUN'".colorize(:blue)
                ball_input_options = gets.chomp
    
                if ball_input_options == "THROW"
                    puts "You threw a Pokeball".colorize(:green)
                end
    
                if ball_input_options == "RUN"
                    pokemon_trainer.movement = true
                    puts "You ran away".colorize(:green)
                end
                @spawn_rate = rand(1..100) # make new spawn_rate number
                ### need to put invalid input here ###
        end
    end

    def berry
        @berry = true
        puts "Would you like to use a berry?"
        puts "YES or NO"
        berry_input_options = gets.chomp
            if berry_input_options == "YES"
                puts "You gave #{@current_pokemon_type} a berry"
            end
            if berry_input_options == "NO"
                puts "You didn't give #{@current_pokemon_type} a berry"
                @berry = false
            end
    end

    def catch_pokemon(pokemon_trainer)
        @catch_rate = rand(1..100).to_i # want to add the pokemons level to this
        puts "catch rate number is #{@catch_rate}" # to be taken out, dont need to see this
        @catch_rate = @catch_rate + @current_pokemon_level
        puts "pokemon level + catch rate number is #{@catch_rate}" # to be taken out, dont need to see this
        @spawn_rate = rand(1..100) # make new spawn_rate number
        if @berry == true
            @catch_rate = @catch_rate - 10
            puts "pokemon level + catch rate - berry number is #{@catch_rate}"
        end


        if catch_rate < 50 # catch or flee rate is 50/50
            puts "You caught #{@current_pokemon_type}".colorize(:green)
            pokemon_trainer.movement = true # return movement to true
        end

        if catch_rate > 50
            puts "You missed, #{@current_pokemon_type} fled".colorize(:red)
            pokemon_trainer.movement = true # movement to true
        end
    end

    def found_no_pokemon(pokemon_trainer)
        if @spawn_rate > 31 # if spawn rate is above 30%, no pokemon appear
            puts "There is no Pokemon here".colorize(:red)
            pokemon_trainer.movement = true
            @spawn_rate = rand(1..100) # make new spawn_rate number
            # puts "The new spawn rate number is #{@spawn_rate}" # to be taken out, dont need to see this
        end
    end
end


# end

    # ball_input_options = gets.chomp
    # if ball_input_options == "THROW"
    #     puts "You threw a pokeball"
    #     puts "catch rate #{catch_rate} NEEDS TO LESS THAN 30"
    #         if catch_rate < 30
    #             puts "You caught a #{current_pokemon}"
    #         elsif
    #             movement = true
    #             puts "The #{current_pokemon} fled"
    #         end


    # def pokemon_spawn
    # puts "You found a pokemon"
    #         @current_pokemon_type = @pokemon_type.sample(1)
    #         @current_pokemon_level = @pokemon_level.sample(1)
    #         puts "You found a #{@current_pokemon_type}"
    #         puts "Its level is #{@current_pokemon_level}"
    #         # puts "***need to put catch method ....***" 
    # end


 # def spawn_rate
    # puts "Spawn rate number is #{@spawn_rate}" # to be taken out, dont need to see this
            
    #         while @spawn_rate > 30
    #             p "There is no Pokemon here"
    #             # inject movement
    #             @spawn_rate = rand(1..100) # make new spawn_rate number
    #             puts "The new spawn rate number is #{@spawn_rate}" # to be taken out, dont need to see this
    #         end

    #         if @spawn_rate < 30 # want this to be 30
    #             puts "You found a pokemon"
    #             @current_pokemon_type = @pokemon_type.sample(1)
    #             @current_pokemon_level = @pokemon_level.sample(1)
    #             puts "You found a #{@current_pokemon_type}"
    #             puts "Its level is #{@current_pokemon_level}"
    #             @movement = false
    #         end
    # end