title @a times 1 30 1
title @a title {"text":"3","color":"gray"}
title @a subtitle {"text":"Starting in ...","color":"yellow"}
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2 0.5

schedule function ctb:system/lobby/countdown/drop_2 1s

# Load player area
setblock 20 15 13 air
setblock 20 15 13 minecraft:structure_block[mode=load]{ignoreEntities:1b,posX:0,mode:"LOAD",posY:-5,sizeX:32,posZ:0,name:"ctb:above_arena/team_structure_green",sizeY:5,sizeZ:11,showboundingbox:0b} replace
setblock 20 16 13 redstone_block
fill 20 15 13 20 16 13 air
