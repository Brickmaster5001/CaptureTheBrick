scoreboard players remove blueBricksLeft main.global 1
execute if score blueBricksLeft main.global matches 2.. run tellraw @a [{"text":"[","color":"gray"},{"text":"#","color":"gold","obfuscated":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" has captured a blue brick for their team!","color":"white"}]
execute if score blueBricksLeft main.global matches 1 run tellraw @a [{"text":"[","color":"gray"},{"text":"#","color":"gold","obfuscated":true},{"text":"] ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" has captured a blue brick for their team. Blue only has one brick left!","color":"white"}]
execute if score blueBricksLeft main.global matches 1.. run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1000 1
execute if score blueBricksLeft main.global matches 0

# Remove tag
tag @s remove player.has_blue_brick

# Clear Items
clear @s gold_ingot
clear @s light_blue_banner

# Update scoreboard
function ctb:score/match_display
