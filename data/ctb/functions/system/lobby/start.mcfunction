function ctb:score/visibility/hide/lobby
function ctb:score/visibility/show/score

tellraw @a [{"text":"\n>>> ","color":"gray"},{"text":"Teams are being assigned. Check chat for your assigned team.\n","color":"white"}]

# Assign players to teams
scoreboard players set teamTrack main.global 1
execute as @a[tag=player.in_lobby,tag=!team.red,tag=!team.blue,limit=1,sort=random] at @s run function ctb:system/lobby/assign_teams

# announce time to select classes before delayed class menu open
tellraw @a [{"text":"\n>>> ","color":"gray"},{"text":"You have 30 seconds to pick your class. A default class will be assigned if you do not pick one.\n","color":"white"}]
schedule function ctb:system/lobby/open_class_gui 3s
schedule function ctb:system/lobby/countdown/move_3 29s
