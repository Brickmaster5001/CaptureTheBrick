# When a team reaches zero bricks win with the opposite team
execute if score gameState main.global matches 1 if score blueBricksLeft main.global matches 0 run function ctb:system/end/win/red
execute if score gameState main.global matches 1 if score redBricksLeft main.global matches 0 run function ctb:system/end/win/blue

# If the timer reaches zero and both teams still have bricks remaining initiate sudden death
execute if score gameState main.global matches 1 if score timeLeft main.global matches 0 run function ctb:system/end/sudden_death

# Animate lobby bossbar
scoreboard players add lobbyAnimateCount main.global 1
execute if score lobbyAnimateCount main.global matches 1 run bossbar set minecraft:lobby_display name [{"text":"Waiting for Game to Start","bold":"true","color":"#695B87"}]
execute if score lobbyAnimateCount main.global matches 10 run bossbar set minecraft:lobby_display name [{"text":". Waiting for Game to Start .","bold":"true","color":"#695B87"}]
execute if score lobbyAnimateCount main.global matches 20 run bossbar set minecraft:lobby_display name [{"text":". . Waiting for Game to Start . .","bold":"true","color":"#695B87"}]
execute if score lobbyAnimateCount main.global matches 30 run bossbar set minecraft:lobby_display name [{"text":". . . Waiting for Game to Start . . .","bold":"true","color":"#695B87"}]
execute if score lobbyAnimateCount main.global matches 40 run bossbar set minecraft:lobby_display name [{"text":". . Waiting for Game to Start . .","bold":"true","color":"#695B87"}]
execute if score lobbyAnimateCount main.global matches 50 run bossbar set minecraft:lobby_display name [{"text":". Waiting for Game to Start .","bold":"true","color":"#695B87"}]
execute if score lobbyAnimateCount main.global matches 60 run scoreboard players set lobbyAnimateCount main.global 0
