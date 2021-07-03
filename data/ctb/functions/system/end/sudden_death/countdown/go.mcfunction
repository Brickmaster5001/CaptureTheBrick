title @a title {"text":"GO!","color":"red"}
title @a subtitle {"text":"Get that brick!","color":"yellow"}
execute as @a[tag=player.playing] at @s run playsound minecraft:block.note_block.pling master @s
effect clear @a[tag=player.playing] slowness

function ctb:player/brick/population/populate_sudden_death
