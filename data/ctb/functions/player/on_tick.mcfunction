# Kill dropped ingot items
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{ShowBrick:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",tag:{ShowBrick:1b}}}]

## Fill players hotbar with respective brick when they have the appropriate tag

# Blue Bricks
replaceitem entity @e[tag=player.has_blue_brick] hotbar.0 minecraft:gold_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_blue_brick] hotbar.1 minecraft:gold_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_blue_brick] hotbar.2 minecraft:gold_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_blue_brick] hotbar.3 minecraft:gold_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_blue_brick] hotbar.4 minecraft:gold_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_blue_brick] hotbar.5 minecraft:gold_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_blue_brick] hotbar.6 minecraft:gold_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_blue_brick] hotbar.7 minecraft:gold_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_blue_brick] hotbar.8 minecraft:gold_ingot{ShowBrick:1b}

# Blue Banner
replaceitem entity @e[tag=player.has_blue_brick] armor.head minecraft:light_blue_banner

# Red Bricks
replaceitem entity @e[tag=player.has_red_brick] hotbar.0 minecraft:iron_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_red_brick] hotbar.1 minecraft:iron_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_red_brick] hotbar.2 minecraft:iron_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_red_brick] hotbar.3 minecraft:iron_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_red_brick] hotbar.4 minecraft:iron_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_red_brick] hotbar.5 minecraft:iron_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_red_brick] hotbar.6 minecraft:iron_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_red_brick] hotbar.7 minecraft:iron_ingot{ShowBrick:1b}
replaceitem entity @e[tag=player.has_red_brick] hotbar.8 minecraft:iron_ingot{ShowBrick:1b}

# Red Banner
replaceitem entity @e[tag=player.has_red_brick] armor.head minecraft:red_banner

# Display particles at head of brick armor stands
execute at @e[tag=player.blue_brick] run particle minecraft:dust 0.33 1 1 1 ~ ~1.8 ~ 0.2 0.2 0.2 0.1 1 force @a

execute at @e[tag=player.red_brick] run particle minecraft:dust 1 0.33 0.33 1 ~ ~1.8 ~ 0.2 0.2 0.2 0.1 1 force @a

# Check for brick markers with no bricks on their head
execute as @e[tag=player.blue_brick] at @s store success score @s p.brick_test run data get entity @s ArmorItems[{id:"minecraft:gold_ingot"}]
execute as @e[tag=player.red_brick] at @s store success score @s p.brick_test run data get entity @s ArmorItems[{id:"minecraft:iron_ingot"}]

# Check player for taken bricks
execute as @a[tag=player.playing,tag=team.blue,tag=!player.tagged] at @s if data entity @s Inventory[{tag:{BlueBrick:1b}}] run function ctb:player/brick/blue/fail_to_take_brick_own
execute as @a[tag=player.playing,tag=team.red,tag=!player.tagged] at @s if data entity @s Inventory[{tag:{RedBrick:1b}}] run function ctb:player/brick/red/fail_to_take_brick_own

execute as @a[tag=player.playing,tag=team.blue,tag=!player.tagged] at @s if data entity @s Inventory[{tag:{RedBrick:1b}}] unless block ~ 1 ~ white_concrete run function ctb:player/brick/red/take_brick
execute as @a[tag=player.playing,tag=team.red,tag=!player.tagged] at @s if data entity @s Inventory[{tag:{BlueBrick:1b}}] unless block ~ 1 ~ white_concrete run function ctb:player/brick/blue/take_brick

execute as @a[tag=player.playing,tag=team.blue,tag=!player.tagged] at @s if data entity @s Inventory[{tag:{RedBrick:1b}}] if block ~ 1 ~ white_concrete run function ctb:player/brick/red/fail_to_take_brick_neutral
execute as @a[tag=player.playing,tag=team.red,tag=!player.tagged] at @s if data entity @s Inventory[{tag:{BlueBrick:1b}}] if block ~ 1 ~ white_concrete run function ctb:player/brick/blue/fail_to_take_brick_neutral

execute as @a[tag=player.playing,tag=team.blue,tag=player.tagged] at @s if data entity @s Inventory[{tag:{RedBrick:1b}}] run function ctb:player/brick/red/fail_to_take_brick_tagged
execute as @a[tag=player.playing,tag=team.red,tag=player.tagged] at @s if data entity @s Inventory[{tag:{BlueBrick:1b}}] run function ctb:player/brick/blue/fail_to_take_brick_tagged

# Check for sudden death bricks
execute as @a[tag=player.playing,tag=team.blue] at @s if data entity @s Inventory[{tag:{BlueSuddenDeathBrick:1b}}] unless block ~ 1 ~ white_concrete run scoreboard players set blueBricksLeft main.global 0
execute as @a[tag=player.playing,tag=team.red] at @s if data entity @s Inventory[{tag:{RedSuddenDeathBrick:1b}}] unless block ~ 1 ~ white_concrete run scoreboard players set redBricksLeft main.global 0

execute as @e[tag=player.playing,tag=player.has_blue_brick,tag=player.tagged] at @s run function ctb:player/brick/blue/drop_brick
execute as @e[tag=player.playing,tag=player.has_red_brick,tag=player.tagged] at @s run function ctb:player/brick/red/drop_brick

# Kill brick marker armor stands who's bricks have been taken and
execute as @e[tag=player.brick_marker,tag=player.blue_brick,scores={p.brick_test=0}] at @s if entity @e[tag=player.playing,tag=team.red,tag=player.has_blue_brick,distance=..7] run kill @s
execute as @e[tag=player.brick_marker,tag=player.red_brick,scores={p.brick_test=0}] at @s if entity @e[tag=player.playing,tag=team.blue,tag=player.has_red_brick,distance=..7] run kill @s

# Deposit brick when a player returns to their territory
execute as @e[tag=player.playing,tag=player.has_blue_brick] at @s if block ~ 1 ~ white_concrete run function ctb:player/brick/blue/deposit_brick
execute as @e[tag=player.playing,tag=player.has_red_brick] at @s if block ~ 1 ~ white_concrete run function ctb:player/brick/red/deposit_brick
