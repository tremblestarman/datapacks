scoreboard players reset max_distance con
scoreboard players reset distance con

# events list
execute if score event_id con matches 0 positioned ~ ~ ~ run execute if block ~ ~ ~ minecraft:smithing_table if block ~ ~1 ~ minecraft:grindstone align xyz positioned ~0.5 ~ ~0.5 run function 3mg:crafting/3mgtable/3mgtable_init
execute if score event_id con matches 1 positioned ~ ~ ~ run execute if block ~ ~-1 ~ minecraft:smithing_table if block ~ ~ ~ minecraft:grindstone align xyz positioned ~0.5 ~-1 ~0.5 run function 3mg:crafting/3mgtable/3mgtable_init
execute if score event_id con matches 1 positioned ~ ~ ~ run execute if block ~ ~ ~ minecraft:smithing_table if block ~ ~1 ~ minecraft:grindstone align xyz positioned ~0.5 ~ ~0.5 run function 3mg:crafting/3mgtable/3mgtable_init
execute if score event_id con matches 2 positioned ~ ~ ~ run execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{3mgisGasCompressor:1b}}]} align xyz positioned ~0.5 ~ ~0.5 run function 3mg:functional/compressor/compressor_init
execute if score event_id con matches 3 positioned ~ ~ ~ run execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{3mgisAssemblyTable:1b}}]} align xyz positioned ~0.5 ~ ~0.5 run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_init

scoreboard players reset event_id con