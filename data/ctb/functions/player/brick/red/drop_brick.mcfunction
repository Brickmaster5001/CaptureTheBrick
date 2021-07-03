tellraw @a [{"text":"[","color":"gray"},{"text":"#","color":"red","obfuscated":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" has just been tagged while carrying a brick. That brick is now dropped where they were tagged!","color":"gray"}]

# Remove Tag
tag @s remove player.has_red_brick

# Clear items
clear @s iron_ingot
clear @s red_banner

# Drop Brick Item
summon item ~ ~ ~ {CustomNameVisible:1b,Age:5000,PickupDelay:5000,Tags:["player.red_brick_drop_marker"],CustomName:'{"text":"Red Brick","color":"red","bold":true}',Item:{id:"minecraft:iron_ingot",Count:1b}}
schedule function ctb:player/brick/red/sink_dropped_brick 5s
