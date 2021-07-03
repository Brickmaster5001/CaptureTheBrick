function ctb:score/visibility/hide/lobby
function ctb:score/visibility/show/score

tellraw @a "Game Starting"

function ctb:system/lobby/open_class_gui

# Assign players to teams
scoreboard players set teamTrack main.global 1
execute as @a[tag=player.in_lobby,tag=!team.red,tag=!team.blue,limit=1,sort=random] at @s run function ctb:system/lobby/assign_teams
