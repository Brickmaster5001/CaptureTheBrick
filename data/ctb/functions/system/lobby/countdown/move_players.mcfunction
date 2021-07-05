tp @a[tag=player.playing,tag=team.blue] @e[tag=system.blue_team_spawn,limit=1]
tp @a[tag=player.playing,tag=team.red] @e[tag=system.red_team_spawn,limit=1]
schedule function ctb:system/lobby/countdown/drop_3 8s
tellraw @a [{"text":"\n>>> ","color":"gray"},{"text":"The game will begin shortly.\n","color":"green"}]
execute as @a[tag=player.playing] at @s run playsound minecraft:entity.enderman.teleport master @s
