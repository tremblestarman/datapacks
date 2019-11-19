scoreboard players reset max_distance con
scoreboard players reset distance con

# events list
execute if score event_id con matches 0 positioned ~ ~ ~ run execute if block ~ ~ ~ minecraft:smithing_table if block ~ ~1 ~ minecraft:grindstone align xyz positioned ~0.5 ~ ~0.5 run function smd:crafting/smdtable/smdtable_init
execute if score event_id con matches 1 positioned ~ ~ ~ run execute if block ~ ~-1 ~ minecraft:smithing_table if block ~ ~ ~ minecraft:grindstone align xyz positioned ~0.5 ~-1 ~0.5 run function smd:crafting/smdtable/smdtable_init
execute if score event_id con matches 1 positioned ~ ~ ~ run execute if block ~ ~ ~ minecraft:smithing_table if block ~ ~1 ~ minecraft:grindstone align xyz positioned ~0.5 ~ ~0.5 run function smd:crafting/smdtable/smdtable_init
execute if score event_id con matches 2 positioned ~ ~ ~ run execute if block ~ ~ ~ minecraft:iron_block align xyz positioned ~0.5 ~ ~0.5 run function smd:functional/compressor/compressor_init
execute if score event_id con matches 3 positioned ~ ~ ~ run execute if block ~ ~ ~ minecraft:crafting_table align xyz positioned ~0.5 ~ ~0.5 run function smd:functional/smd_assembly_table/smd_assembly_table_init

scoreboard players reset event_id con