playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2
tellraw @s [{"text":"\n>>> ","color":"gray"},{"text":"You cannot take a brick while in the neutral zone!\n","color":"yellow"}]
clear @s gold_ingot
replaceitem entity @e[tag=player.brick_marker,tag=player.blue_brick,scores={p.brick_test=0}] armor.head gold_ingot{BlueBrick:1b}
