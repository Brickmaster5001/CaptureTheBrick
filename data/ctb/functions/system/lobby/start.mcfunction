# Hide the lobby bossbar and show the in-game score bossbar
function ctb:score/visibility/hide/lobby
function ctb:score/visibility/show/score

# Announce to playing participants that teams are being assigned
tellraw @a[tag=player.in_lobby] [{"text":"\n>>> ","color":"gray"},{"text":"Teams are being assigned. Check chat for your assigned team.\n","color":"white"}]

# Announce to non playing participants that they will become spectators when the round begins
tellraw @a[tag=!player.in_lobby] [{"text":"\n>>> ","color":"gray"},{"text":"You have elected not to join this round. You will be a spectator once it begins.\n","color":"white"}]


# Assign players to teams
scoreboard players set teamTrack main.global 1
execute as @a[tag=player.in_lobby,tag=!team.red,tag=!team.blue,limit=1,sort=random] at @s run function ctb:system/lobby/assign_teams

# announce time to select classes before delayed class menu open
tellraw @a[tag=player.in_lobby] [{"text":"\n>>> ","color":"gray"},{"text":"You have 30 seconds to pick your class. A default class will be assigned if you do not pick one.\n","color":"white"}]
schedule function ctb:system/lobby/open_class_gui 3s
schedule function ctb:system/lobby/countdown/move_3 29s

# Update gamestate to pre-game state
scoreboard players set gameState main.global 1

## STATE MAP
# 0 = in lobby
# 1 = pre-game
# 2 = in game
# 3 = sudden death
# 4 = victory podium
##
