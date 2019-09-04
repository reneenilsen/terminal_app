require 'colorize'
require 'artii'
require_relative 'player_class'
require_relative 'pokemon_class'

a = Artii::Base.new
puts a.asciify("Pokemon").colorize(:blue)

puts "Welcome to Pokemon" # welcome message
puts "Lets play!"

pokemon_trainer = Player.new # create the player
encounter = Pokemon.new # create the pokemon

while pokemon_trainer.movement == true
    pokemon_trainer.move  # move around area
    encounter.spawn_rate(pokemon_trainer)  # at each movement, generate a spawn rate number
        if  pokemon_trainer.movement == false
            encounter.found_pokemon(pokemon_trainer) # spawn rate <30 - shows pokemon and its level and changes movement to false
            encounter.throw_run(pokemon_trainer) # option to throw a pokball or run
                if pokemon_trainer.movement == false
                    encounter.catch_pokemon(pokemon_trainer) # generates catch rate and <30 or caught the pokemon or >30 it flees
                end
        elsif
            encounter.found_no_pokemon(pokemon_trainer) # spawn rate >30 - reads spawn rate above 30 and prints no pokemon here
        end
end




# encounter.found_pokemon # if spawn rate 1-30 / # encounter.found_no_pokemon # if spawn rate 31-100 --- # check to againist found_ pokemon or found_no_pokemon



# while spawn_rate
# pokemon_trainer.move # move a direction
 # check spawn rate #


# encounter.throw_run # option to throw pokeball or run
# encounter.catch_pokemon




# show pokemon type and level
# else pokemon trainer move


# encounter.spawn_rate




# if spawn rate is - 31-100, ask for movement, make movement then check the new spawn rate  



#     
# else
#     encounter.pokemon_spawn
# end



# unless encounter.spawn_rate == true
#     pokemon_trainer.move
# end

# encounter.spawn_rate
# puts pokemon_trainer.move






# ***add to git hub***
# git add <filename>
# git commit -m "<message>"
# git push -u origin master