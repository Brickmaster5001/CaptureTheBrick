# Kill existing bricks
function ctb:player/brick/remove_existing_bricks

# Create new bricks @ `player.blue/red_brick_populator`
execute at @e[tag=player.blue_brick_populator] positioned ~ ~-0.3 ~ run function ctb:player/brick/blue/make_brick
execute at @e[tag=player.red_brick_populator] positioned ~ ~-0.3 ~ run function ctb:player/brick/red/make_brick
