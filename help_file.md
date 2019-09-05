# How to use
Download and unzip files

In terminal

install bundler

bundle install

ruby pokemon_main.rb

# Gems used
artii - for the ascii word art

colorize - coloring text for readability

# Gameplay
Start
*The title and welcome will appear
*Prints "Where would you like to go?" "Left, Right, Up, Down or Quit"
*User inputs direction
*Prints "You moved <direction>" id direction is given or if input is Quit, system clears
If you have encountered a Pokemon
*Prints "You have found a Pokemon" "You have found a <Pokemon>" "It's level is <level>"
*Prints "Would you like to use a berry" "YES or NO" (Berry increases catch rate)
*User inputs Yes or No
*Prints "You gave <Pokemon> a berry" or "You didn't give <Pokemon> a berry"
*Prints "Throw Pokeball or Run"
*User inputs Throw or Run
*Prints "You threw a pokeball" or "You ran away"
If caught
*Print "You caught a <Pokemon>"
*Returns to directions for movement
If not caught
*Prints "You missed, <Pokemon> fled"
If run
*Prints "You ran away"
*Returns to directions for movement