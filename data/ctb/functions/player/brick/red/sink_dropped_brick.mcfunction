execute as @e[tag=player.red_brick_drop_marker,nbt={OnGround:1b}] at @s run summon minecraft:leash_knot ~ ~ ~ {Tags:["player.center_brick_drop"]}
execute as @e[tag=player.center_brick_drop] at @s positioned ~ ~-0.3 ~ run function ctb:player/brick/red/make_brick
kill @e[tag=player.red_brick_drop_marker]
kill @e[tag=player.center_brick_drop]
