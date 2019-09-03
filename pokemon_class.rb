class Pokemon
attr_accessor :pokemon_type, :pokemon_level, :pokemon_spawn, :current_pokemon_level
attr_accessor :current_pokemon_type, :spawn_rate, :ball_input_options, :catch_rate

    def initialize
        @pokemon_type = ["Pikachu", "Eevee", "Psyduck", "Ekans", "Vulpix", "Squirtle", "Bulbasaur", "Charmander"]
        @pokemon_level = [1, 2, 3, 4, 5]
        @spawn_rate = rand(1..100)
        
    end

    def spawn_rate
        puts "Spawn rate number is #{@spawn_rate}" # to be taken out, dont need to see this
    end

    def found_pokemon
        if @spawn_rate < 30 # spawn rate at 30%
            puts "You found a pokemon"
            @current_pokemon_type = @pokemon_type.sample(1) # ramdomly choose pokemon type from array
            @current_pokemon_level = @pokemon_level.sample(1) # ramdomly choose pokemon level from array
            puts "You found a #{@current_pokemon_type}" # prints random pokemon
            puts "Its level is #{@current_pokemon_level}" # prints ramdom pokemon level
            @movement = false # make movement false so we cant move
        end
    end

    def found_no_pokemon
        if @spawn_rate > 30 # if spawn rate is above 30%, no pokemon appear
            p "There is no Pokemon here"
            # @spawn_rate = rand(1..100) # make new spawn_rate number
            # puts "The new spawn rate number is #{@spawn_rate}" # to be taken out, dont need to see this
        end
    end

    def throw_run
        if @spawn_rate < 30
            #if we have found a pokemon
                puts "'THROW' Pokeball or 'RUN'"
                ball_input_options = gets.chomp
    
                if ball_input_options == "THROW"
                    puts "You threw a Pokeball"
                end
    
                if ball_input_options == "RUN"
                    puts "You ran away"
                    # need to stop this loop
                end
        end
    end

