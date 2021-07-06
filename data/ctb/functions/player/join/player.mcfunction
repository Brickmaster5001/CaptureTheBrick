# Adjust Tags
tag @s add player.in_lobby
tag @s remove team.red
tag @s remove team.blue

# Alert Player
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2
tellraw @s [{"text":"\n>>> ","color":"gray"},{"text":"You have joined as a player for the next game. \n","color":"green"}]

# Teleport player
tp @s ~ ~-8 ~
