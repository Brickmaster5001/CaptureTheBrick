# Load chunk at 0 255 0
forceload add 0 0 0 0

# Place proxy commandblock at 0 255 0
setblock 0 255 0 command_block{Command:"openclassgui"} replace
#setblock 0 255 0 command_block{Command:"tellraw @a \"Welcome\""} replace

# Activate command block with redstone block
setblock 0 254 0 redstone_block

schedule function ctb:system/lobby/unload_class_chunk 4t
