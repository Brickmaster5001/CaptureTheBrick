title @a times 1 30 1
title @a title {"text":"1","color":"gray"}
title @a subtitle {"text":"Moving players in ...","color":"yellow"}
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2 1.2

schedule function ctb:system/lobby/countdown/move_players 1s
