# Alert players before sudden death activation
tellraw @a [{"text":"\n>>> ","color":"gray"},{"text":"Woah, looks like time is up and no ones won! Sudden death it is then.\n","color":"yellow"}]
tellraw @a [{"text":">>> ","color":"gray"},{"text":"A single brick has now been spawned at the center of each teams base. First team to collect their opponents brick wins!\n","color":"red","bold":"true"}]

## Start Countdown
# Slow players
effect give @a[tag=player.playing] slowness 20 200 true
title @a times 0 30 0
title @a title {"text":"3","color":"red"}
title @a subtitle {"text":"Sudden death begins in ...","color":"yellow"}
execute as @a[tag=player.playing] at @s run playsound minecraft:block.note_block.pling master @s
schedule function ctb:system/end/sudden_death/countdown/2 3s

# Depopulate existing bricks on the map
function ctb:player/brick/remove_existing_bricks
