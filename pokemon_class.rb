class Pokemon
attr_accessor :pokemon_type, :pokemon_level, :spawn, :current_pokemon_level, :current_pokemon_type, :spawn_rate

    def initialize
        @pokemon_type = ["Pikachu", "Eevee", "Psyduck", "Ekans", "Vulpix", "Squirtle", "Bulbasaur", "Charmander"]
        @pokemon_level = [1, 2, 3, 4, 5]
       
    end

    def spawn_rate
        @spawn_rate = rand(1..100)
        puts "Spawn rate number is #{@spawn_rate}" 
            if @spawn_rate < 30
                puts "You found a pokemon"
                @current_pokemon_type = @pokemon_type.sample(1)
                @current_pokemon_level = @pokemon_level.sample(1)
                puts "You found a #{@current_pokemon_type}"
                puts "Its level is #{@current_pokemon_level}"
            elsif
                p "There is no Pokemon here"
            end  
    end

    # def spawn
    #     @current_pokemon_type = @pokemon_type.sample(1)
    #     @current_pokemon_level = @pokemon_level.sample(1)
    #     puts "You found a #{@current_pokemon_type}"
    #     puts "Its level is #{@current_pokemon_level}"
    # end
end

# eevee = Pokemon.new("Eevee", 3)
# ekans = Pokemon.new("Ekans", 1)
# psyduck = Pokemon.new("Psyduck", 2)
# vulpix = Pokemon.new("Vulpix", 4)

# puts psyduck.spawn
# puts ekans.spawn
# puts eevee.spawn
# puts vulpix.spawn