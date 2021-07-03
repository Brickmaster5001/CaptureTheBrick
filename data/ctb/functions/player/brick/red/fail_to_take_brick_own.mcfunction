playsound minecraft:block.note_block.snare master @s ~ ~ ~ 2
tellraw @s [{"text":"\n>>> ","color":"gray"},{"text":"You cannot take your own brick!\n","color":"yellow"}]
clear @s iron_ingot
replaceitem entity @e[tag=player.brick_marker,tag=player.red_brick,scores={p.brick_test=0}] armor.head iron_ingot{RedBrick:1b}
