execute if score teamTrack main.global matches -1 run scoreboard players set teamTrack main.global 2
execute if score teamTrack main.global matches 1 run scoreboard players set teamTrack main.global -2
execute if score teamTrack main.global matches 2 run scoreboard players set teamTrack main.global 1
execute if score teamTrack main.global matches -2 run scoreboard players set teamTrack main.global -1
execute if score teamTrack main.global matches 1 run tag @s add team.red
execute if score teamTrack main.global matches -1 run tag @s add team.blue
execute if score teamTrack main.global matches 1 run team join red @s
execute if score teamTrack main.global matches -1 run team join blue @s
execute if score teamTrack main.global matches 1 run tellraw @s [{"text":"\n>>> ","color":"gray"},{"text":"You are on Red team!\n","color":"red"}]
execute if score teamTrack main.global matches -1 run tellraw @s [{"text":"\n>>> ","color":"gray"},{"text":"You are on Blue team!\n","color":"aqua"}]
tag @s add player.playing
tag @s remove player.in_lobby
execute as @e[tag=player.in_lobby] at @s run function ctb:system/lobby/assign_teams
