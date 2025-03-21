# Dimensional-Explorer
~~ Second Attempt, if it works I'll delete the original ~~ <-- Done

Dimensional Explorer is a game I wanted to make since the start of last year, I have created an Alpha Build of the game (Which may or may not work due to my most recent change trying to implement an interaction system that works with TileMapLayer while having the character scenery be separated from the test level scenery.

It's a game about exploring different types of biomes, or as I like to call, worlds, it will be separated in this way

A room is contained within a group of rooms, which is contained within a quadrant which is contained within a floor, which is contained within a building (house, building, temple, etc.) which is contained within a block, which is then contained within a neighbor (composed of 3x3 blocks, it may be changed later) which is then contained within a city (or village, it's not a strict rule, there can be temples not contained in blocks and cities and etc. Also not all buildings will be explorable, but with future updates that will change), the neighbor is contained within a district, which is contained in a city (don't go imagining cyberpunk 2077 levels of city size, it may be smaller) which is contained within a country (composed of multiple biomes, from cities to forests) which is contained in a world (basically several layers, surface, underground, deep underground, biomes (0 through n basically), which is contained in multiple worlds (less of a solar system, which would be too complex, and more of a multiple worlds inter-connected which follows a specific theme and aesthetic) which is contained in a dimension contained in multiple dimensions (different dimensions, different aesthetics and maybe some references to other games which I'll have to probably change some things to avoid a copyright strike/cease and desist I won't be able to pay off)

In this game, the objective is simple, explore everything, collect everything, battle against everything and read everything, I want to implement features such as:

- Advanced Material System, where you can make from the simples copper to the most advanced hardlight
- Advanced Leveling System, where you have to fully commit to a class, then you can later liberate a free-all mode where you can level up everything, the grind gets harder the more you level up though
- Day-Night cycle + Seasons, each different on each world
- etc.

But right now I'm focusing on implementing barebones features, such as: 

-An interaction system (seriously there's no documentation on Godot or any other site about how to do it with tile map layer, and those that exist are extremely outdated
-A save-load system and a quick save system
-Dialogue
__________________________ ^^ InDev versions
-First materials
-First biomes
-First enemies
__________________________ ^^ Alpha Versions

-Basic lore
-Crafting
-Room transitions
__________________________ ^^ Beta versions

And I'm posting this here because I won't be able to do everything myself under any reasonable amount of decades, and if you want to help, you may be able to help me solve problems I wouldn't be able to solve from my point of view

I do NOT want free labor, I want to colab with other talanted people to make a game which we can all play in the future

Anyways, installing the files is easy, no CMake bullshit or anything like it, though if there's compatibility issues (this was made on a Windows 10 systems with an x64 AMD CPU) then I'm sorry 'cause I dunno how to make it work, though if you want, and if it's needed, you can modify it to work on different operating systems, but only if you want to, other than that it should be easy
