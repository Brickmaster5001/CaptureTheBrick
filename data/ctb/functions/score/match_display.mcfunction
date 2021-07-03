# Match for 4:4
execute if score blueBricksLeft main.global matches 4 run bossbar set minecraft:score_display color white
execute if score redBricksLeft main.global matches 4 run bossbar set minecraft:score_display value 4

# Mathc for 3:3
execute if score blueBricksLeft main.global matches 3 run bossbar set minecraft:score_display color purple
execute if score redBricksLeft main.global matches 3 run bossbar set minecraft:score_display value 3

# Mathc for 2:2
execute if score blueBricksLeft main.global matches 2 run bossbar set minecraft:score_display color yellow
execute if score redBricksLeft main.global matches 2 run bossbar set minecraft:score_display value 2

# Mathc for 1:1
execute if score blueBricksLeft main.global matches 1 run bossbar set minecraft:score_display color green
execute if score redBricksLeft main.global matches 1 run bossbar set minecraft:score_display value 1

# Mathc for 0:0
execute if score blueBricksLeft main.global matches 0 run bossbar set minecraft:score_display color red
execute if score redBricksLeft main.global matches 0 run bossbar set minecraft:score_display value 0
