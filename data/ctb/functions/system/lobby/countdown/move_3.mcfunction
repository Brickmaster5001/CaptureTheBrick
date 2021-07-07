title @a times 1 30 1
title @a title {"text":"3","color":"gray"}
title @a subtitle {"text":"Moving players in ...","color":"yellow"}
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2 0.5

schedule function ctb:system/lobby/countdown/move_2 1s

kill @e[tag=system.player_team_spawns]

# Load player area
setblock 214 60 78 air
setblock 214 60 78 minecraft:structure_block[mode=load]{ignoreEntities:0b,posX:0,mode:"LOAD",posY:-5,sizeX:32,posZ:0,name:"ctb:above_arena/team_structure_start",sizeY:5,sizeZ:11,showboundingbox:0b} replace
setblock 214 59 78 redstone_block
fill 214 60 78 214 59 78 air
