# Break Red Glass
fill 21 10 22 24 10 14 air destroy

# Break Blue Glass
fill 46 10 14 49 10 22 air destroy

title @a times 1 25 1
title @a title {"text":"Go!","color":"red"}
execute as @a at @s run playsound minecraft:entity.dragon_fireball.explode master @s
