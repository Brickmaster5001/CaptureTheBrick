execute as @a at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 2 1

schedule function ctb:system/lobby/countdown/extend_6 5t

# Load player area
setblock 214 60 78 air
setblock 214 60 78 minecraft:structure_block[mode=load]{ignoreEntities:1b,posX:0,mode:"LOAD",posY:-5,sizeX:32,posZ:0,name:"ctb:above_arena/team_structure_out5",sizeY:5,sizeZ:11,showboundingbox:0b} replace
setblock 214 59 78 redstone_block
fill 214 60 78 214 59 78 air

# Teleport Players
execute as @a[tag=team.red] at @s run tp @s ~-1 ~ ~
execute as @a[tag=team.blue] at @s run tp @s ~1 ~ ~
