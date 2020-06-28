scoreboard objectives add con dummy
scoreboard objectives add var dummy

scoreboard objectives add place_smith minecraft.used:minecraft.smithing_table
scoreboard objectives add place_grind minecraft.used:minecraft.grindstone
scoreboard objectives add place_barrel minecraft.used:minecraft.barrel
scoreboard objectives add 3mg_rightClick minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add playerGas dummy
scoreboard objectives add playerAir dummy
scoreboard objectives add stringLength dummy
scoreboard objectives add lStringLengthR dummy
scoreboard objectives add cStringLengthR dummy
scoreboard objectives add lStringLengthL dummy
scoreboard objectives add cStringLengthL dummy

scoreboard objectives add attach_x1 dummy
scoreboard objectives add attach_y1 dummy
scoreboard objectives add attach_z1 dummy
scoreboard objectives add attach_x2 dummy
scoreboard objectives add attach_y2 dummy
scoreboard objectives add attach_z2 dummy

scoreboard objectives add acceleration dummy
scoreboard players set 1000 con 1000

execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0

scoreboard players set control_factor con 50
scoreboard players set gas_consume con 15
scoreboard players set air_consume con 30