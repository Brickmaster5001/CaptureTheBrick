# Setup Teams
team add red
team add blue

# Modify Teams
team modify red color red
team modify blue color aqua
team modify red collisionRule pushOtherTeams
team modify blue collisionRule pushOtherTeams
team modify red prefix {"text":"☠ ","color":"dark_red"}
team modify red suffix {"text":" ☠","color":"dark_red"}
team modify blue prefix {"text":"☆ ","color":"blue"}
team modify blue suffix {"text":" ☆","color":"blue"}

# Setup Scoreboards
scoreboard objectives add main.global dummy
scoreboard objectives add p.brick_test dummy

# Modify Scoreboards

# Setup dummy scoreboard players
scoreboard players set p.active main.global 1
scoreboard players set s.active main.global 1
scoreboard players set gameState main.global 0
# /\ 0 = lobby 1 = in-game 2 = win-screen
scoreboard players set lobbyAnimateCount main.global 0
scoreboard players set redBricksLeft main.global 4
scoreboard players set blueBricksLeft main.global 4
scoreboard players set timeLeft main.global 12000
scoreboard players set teamTrack main.global 0

# Setup Bossbars
bossbar add score_display [{"text":"Red","bold":"true","color":"red"},{"text":" vs. ","color":"gray","bold":"false"},{"text":"Blue","bold":"true","color":"aqua"}]
bossbar add lobby_display [{"text":"Waiting for Game to Start ...","bold":"true","color":"#695B87"}]
bossbar add win_display [{"text":"XXXXXX Team Wins!","bold":"true","color":"#e0b526"}]

# Modify Bossbars
bossbar set minecraft:score_display max 8
bossbar set minecraft:score_display value 4
bossbar set minecraft:score_display color white
bossbar set minecraft:score_display visible false
bossbar set minecraft:score_display style notched_6
bossbar set minecraft:score_display players @a

bossbar set minecraft:lobby_display max 1
bossbar set minecraft:lobby_display value 1
bossbar set minecraft:lobby_display color blue
bossbar set minecraft:lobby_display visible false

bossbar set minecraft:win_display max 1
bossbar set minecraft:win_display value 1
bossbar set minecraft:win_display color pink
bossbar set minecraft:win_display visible false
