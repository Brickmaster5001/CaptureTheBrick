tellraw @a [{"text":"[","color":"gray"},{"text":"#","color":"red","obfuscated":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" has just been tagged while carrying a brick. That brick is now dropped where they were tagged!","color":"gray"}]

# Remove Tag
tag @s remove player.has_blue_brick

# Clear items
clear @s gold_ingot
clear @s light_blue_banner

# Drop Brick Item
summon item ~ ~ ~ {CustomNameVisible:1b,Age:5000,PickupDelay:5000,Tags:["player.blue_brick_drop_marker"],CustomName:'{"text":"Blue Brick","color":"aqua","bold":true}',Item:{id:"minecraft:gold_ingot",Count:1b}}
schedule function ctb:player/brick/blue/sink_dropped_brick 5s
