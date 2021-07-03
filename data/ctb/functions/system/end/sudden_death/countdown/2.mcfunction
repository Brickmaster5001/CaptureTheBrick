title @a title {"text":"2","color":"red"}
title @a subtitle {"text":"Sudden death begins in ...","color":"yellow"}
execute as @a[tag=player.playing] at @s run playsound minecraft:block.note_block.pling master @s
schedule function ctb:system/end/sudden_death/countdown/1 3s
