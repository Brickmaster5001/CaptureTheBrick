# Alert Player
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2
tellraw @s [{"text":"\n>>> ","color":"gray"},{"text":"You cannot join as a player at this time!\n","color":"yellow"}]

# Teleport Player
tp @s 33 23 69
