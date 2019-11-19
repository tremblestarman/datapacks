scoreboard players add distance con 1
particle minecraft:dust 0 0 0 0.4 ~ ~ ~ 0 0 0 0 1
execute if score distance con = @s cStringLengthL run scoreboard players reset distance con
# hit
execute if score distance con matches ..512 if entity @e[tag=string_lm,distance=..1] run scoreboard players operation @s cStringLengthL = distance con
execute if score distance con matches ..512 if entity @e[tag=string_lm,distance=..1] run tag @s add smd_hit_l
execute if score distance con matches ..512 unless block ~ ~ ~ #smd:unattachable run scoreboard players operation @s cStringLengthL = distance con
execute if score distance con matches ..512 unless block ~ ~ ~ #smd:unattachable run tag @s add smd_hit_l
execute if score distance con matches ..512 if entity @e[tag=string_lm,distance=..1] run particle minecraft:block iron_block
execute if score distance con matches ..512 unless block ~ ~ ~ #smd:unattachable run particle minecraft:block iron_block
execute if score distance con matches ..512 if entity @e[tag=string_lm,distance=..1] run scoreboard players reset distance con
execute if score distance con matches ..512 unless block ~ ~ ~ #smd:unattachable run scoreboard players reset distance con
# max length
execute if score distance con matches 513.. run scoreboard players reset distance con

# next
execute if score distance con <= @s cStringLengthL unless entity @e[tag=string_lm,distance=..1] positioned ^ ^ ^0.125 run function smd:player/function/drawstring_l