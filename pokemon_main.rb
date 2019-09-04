require_relative 'player_class'
require_relative 'pokemon_class'

puts "Welcome to Pokemon" # welcome message
puts "Lets play!"

pokemon_trainer = Player.new # create the player
encounter = Pokemon.new # create the pokemon

pokemon_trainer.move # if true # move around until a pokemon is encountered
encounter.spawn_rate  # at each movement, generate a spawn rate number
    #  encounter.spawn_rate  #spawn rate is < 30
if  encounter.found_pokemon # shows pokemon and its level and changes movement to false
    encounter.throw_run # option to throw a pokball or run
    encounter.catch_pokemon # generates catch rate and <30 or caught the pokemon or >30 it flees
elsif
    encounter.found_no_pokemon # reads spawn rate above 30 and prints no pokemon here
end
# end 


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