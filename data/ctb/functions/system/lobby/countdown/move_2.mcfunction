title @a times 1 30 1
title @a title {"text":"2","color":"gray"}
title @a subtitle {"text":"Moving players in ...","color":"yellow"}
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2 0.8

schedule function ctb:system/lobby/countdown/move_1 1s
