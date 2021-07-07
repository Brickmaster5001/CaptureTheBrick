# Break Red Glass
fill 218 55 79 215 55 87 air destroy

# Break Blue Glass
fill 243 55 87 240 55 79 air destroy

# Kill dropped dropped items
kill @e[type=item]

title @a times 1 25 1
title @a title {"text":"Go!","color":"red"}
execute as @a at @s run playsound minecraft:entity.dragon_fireball.explode master @s

# Schedule function to remove drop structure_block
schedule function ctb:system/lobby/countdown/delete_spawn_drop 5s
