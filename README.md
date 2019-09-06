# Statement of purpose

'Pokémon Adventure' is a single player adventure game application built using ruby. You as the Pokémon trainer navigate an area in search of Pokémon, when you encounter a Pokémon, you can choose to catch it or run. If you decide to catch the Pokémon there is a chance the Pokémon could flee based on chance and their level. 

The purpose of this application is as an entertaining way to showcase the skills learnt through Coding Academy over the past 2 weeks.

The target audience of this adventure game application is young children with a high enough development to comprehend written English and the ability to follow simple instruction and return the appropriate response.

A member of the target audience will start the application and be given movement options. Input directs the player and a Pokémon could spawn in the direction the player has moved. If a Pokémon appears the player can throw a Pokeball or run from the encounter. If the player throws a Pokeball the Pokémon can be captured or can flee. If you choose to run from the encounter, successful catch the Pokémon or the Pokémon flees, the player then can continue to move given directions.

# Minimum Requirements

Windows
Microsoft Windows 10/8/7/Vista/2003/XP (incl.64-bit)
Ruby 1.8.x or higher, or JRuby
1 GB RAM minimum
2 GB RAM recommended
1024x768 minimum screen resolution
OS X
Mac OS X 10.8 or higher
Ruby 1.8.x or higher, or JRuby
1 GB RAM minimum
2 GB RAM recommended
Linux
Ruby 1.8.x or higher, or JRuby
1 GB RAM minimum, 2 GB RAM recommended
1024x768 minimum screen resolution
GNOME or KDE desktop

# Features
## Movement
The player is given 4 options for movement, UP, DOWN, LEFT, and RIGHT. The player inputs any of the 4 options and the player moves that direction print to the terminal e.g. “You moved LEFT” for a left movement. The player continues these movements until a Pokémon is encountered. These movements are again used when the player runs from an encounter, successfully catches a Pokémon or the Pokémon flees.

## Spawn Pokémon
Pokémon are encountered a 30% spawn rate. The spawn rate is generated randomly from 100. When a player enters a space that is 30% or lower, a Pokémon is spawned. The spawned Pokémon type and level is randomly chosen from an array (8 possible Pokémon types and levels ranging from 1-5). The randomly spawned type and level is printed to the terminal for the player to view. The player then has an option to throw a Pokeball or run from the encounter. If the player runs, the movement options are available to continue moving through the area. 

## Catch Pokémon
If the user chooses not to run, they are given the option of a berry. The berry lowers the catch rate by 10. If the player chooses to throw a Pokeball, the catch rate is generated randomly from 100. The catch is a 50/50 chance but the Pokémon’s level is now added to the rate possibly making the catch above 50. If the catch is below 50, the Pokémon is caught and prints to the terminal “You caught a <Pokémon name>”. If the rate is above 50, before or after the Pokémon’s level is added, the terminal will print “<Pokémon name> has fled”.

# User Interaction and Experience 
## Movement
The user for movement is given 4 options when navigating the area. The terminal prints “Where would you like to go” and then “’LEFT’, ‘RIGHT’, ‘UP’ OR ‘DOWN’” the terminal then waits for input. If incorrect input is given terminal says “Invalid input”. Once input is correctly given (’LEFT’, ‘RIGHT’, ‘UP’ OR ‘DOWN’) the terminal displays the direction the user has given through “You move <given direction>”. If a Pokémon is not encountered the 4 options for direction is given again.

## Encounters
When a Pokémon is encountered the user is given firstly the option of "'YES' or 'NO'" for giving a berry then 2 more options of “’THROW’ Pokeball or ‘RUN’” the terminal prints this and waits for input of (‘THROW’ or ‘RUN’) to be correctly given else gives “Invalid input”. The terminal the prints either “You threw a Pokeball” or “You ran away”. A nil input in the berry stage prints to the user "You squashed the berry" and in the throw/run stage is shown to the user by printing "You lost the Pokemon"

## Catch Pokémon
The catch Pokémon is run without user input. The catch rate is calculated and prints to the terminal “You caught <Pokémon name>” if cate rate after the modifers of berry and pokemon level was 50 or lower else if catch rate was above 50 (calculated value plus Pokémon’s level) the terminal prints “The <Pokémon name> fled”. This then returns the user to movement options.

There is also a help file available in the folder containing the application.

# Flow Diagram
add flow diagram

# Implementation Plan
![alt text](https://github.com/reneenilsen/terminal_app/blob/master/trello_first_list.bmp "trello board 1")

I broke each function I wanted for my terminal app into seperate list and wrote all the features I wanted for each, once completed I moved each into list where they were still seperate functions to ensure maximum readabilty and ease. I also gave each task a label of high, med and low complexity. 
___
![alt text](https://github.com/reneenilsen/terminal_app/blob/master/trello2.bmp "trello board 2")

At this point I had all my main code running so I decided to implement 2 extra things into my catch function. I added a berry to improve the catch rate and added the pokemons level to the catch rate to increase difficulty of a catch. 
___
![alt text](https://github.com/reneenilsen/terminal_app/blob/master/trello3.bmp "trello board 3")

This point I had completed the main code as well as the extra catch things but as I did not understand the language and the way to use the language I did not do alot of testing at the begining of the week. I did not know what needed to be written and therefore tested. I wrote small parts of the class code then wrote into the main code and tested the code to ensure it worked correctly as well as what would happen if I entered something incorrectly (wrong spelling, uppercase/lowercase, symbols). This often drew errors but I feel I have done my best to ensure the code keeps running correctly. I also did my own checking by outputing elements where ramdom numbers and calcualations were running to test whether they were correct. These methods helped me test my code without having a huge knowledge of the way the language works. These prints to terminal will be removed for the final submission but are very useful while building. 