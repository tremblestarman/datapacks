# look
summon minecraft:falling_block ~ ~0.005 ~ {BlockState:{Name:"minecraft:smithing_table"},NoGravity:1}
summon minecraft:falling_block ~ ~-0.005 ~ {BlockState:{Name:"minecraft:smithing_table"},NoGravity:1}
summon minecraft:falling_block ~0.005 ~ ~ {BlockState:{Name:"minecraft:smithing_table"},NoGravity:1}
summon minecraft:falling_block ~-0.005 ~ ~ {BlockState:{Name:"minecraft:smithing_table"},NoGravity:1}
summon minecraft:falling_block ~ ~ ~0.005 {BlockState:{Name:"minecraft:smithing_table"},NoGravity:1}
summon minecraft:falling_block ~ ~ ~-0.005 {BlockState:{Name:"minecraft:smithing_table"},NoGravity:1}
execute as @e[tag=smdtable_texture,limit=1,sort=nearest,nbt=!{Fire:10s}] run data merge entity @s {Fire:10s}
data merge block ~ ~ ~ {CustomName:"{\"text\":\"立体机动工作台\"}"}

# destroyed
execute if block ~ ~ ~ #minecraft:air run function smd:crafting/smdtable/smdtable_destroy

# recipes
# fan - 6978068
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:stick"},{Slot:5b,id:"minecraft:iron_ingot"},{Slot:7b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_fan
# gas_pipe - 6978069
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:glass_pane"},{Slot:1b,id:"minecraft:iron_nugget"},{Slot:2b,id:"minecraft:glass_pane"}]} run function smd:crafting/recipe_gas_pipe
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:glass_pane"},{Slot:4b,id:"minecraft:iron_nugget"},{Slot:5b,id:"minecraft:glass_pane"}]} run function smd:crafting/recipe_gas_pipe
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b,id:"minecraft:glass_pane"},{Slot:7b,id:"minecraft:iron_nugget"},{Slot:8b,id:"minecraft:glass_pane"}]} run function smd:crafting/recipe_gas_pipe
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:glass_pane"},{Slot:3b,id:"minecraft:iron_nugget"},{Slot:6b,id:"minecraft:glass_pane"}]} run function smd:crafting/recipe_gas_pipe
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:glass_pane"},{Slot:4b,id:"minecraft:iron_nugget"},{Slot:7b,id:"minecraft:glass_pane"}]} run function smd:crafting/recipe_gas_pipe
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b,id:"minecraft:glass_pane"},{Slot:5b,id:"minecraft:iron_nugget"},{Slot:8b,id:"minecraft:glass_pane"}]} run function smd:crafting/recipe_gas_pipe
# gas_pump - 6978070
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,tag:{isFan:1b}},{Slot:2b,id:"minecraft:iron_ingot"},{Slot:3b,tag:{isGasPipe:1b}},{Slot:4b,id:"minecraft:piston"},{Slot:5b,tag:{isGasPipe:1b}},{Slot:6b,id:"minecraft:iron_ingot"},{Slot:7b,tag:{isGasPipe:1b}},{Slot:8b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_gas_pump
# gas_valve - 6978071
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,tag:{isGasPipe:1b}},{Slot:2b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_gas_valve
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,tag:{isGasPipe:1b}},{Slot:5b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_gas_valve
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b,id:"minecraft:iron_ingot"},{Slot:7b,tag:{isGasPipe:1b}},{Slot:8b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_gas_valve
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:3b,tag:{isGasPipe:1b}},{Slot:6b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_gas_valve
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:iron_ingot"},{Slot:4b,tag:{isGasPipe:1b}},{Slot:7b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_gas_valve
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:5b,tag:{isGasPipe:1b}},{Slot:8b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_gas_valve
# advanced_hook - 6978072
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_nugget"},{Slot:1b,id:"minecraft:iron_nugget"},{Slot:2b,id:"minecraft:iron_nugget"},{Slot:3b,id:"minecraft:iron_nugget"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:iron_nugget"},{Slot:6b,id:"minecraft:iron_nugget"},{Slot:7b,id:"minecraft:iron_nugget"},{Slot:8b,id:"minecraft:iron_nugget"}]} run function smd:crafting/recipe_advanced_hook
# compressor - 6978073
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:redstone"},{Slot:1b,tag:{isGasValve:1b}},{Slot:2b,id:"minecraft:redstone"},{Slot:3b,tag:{isGasPipe:1b}},{Slot:4b,tag:{isGasPump:1b}},{Slot:5b,tag:{isGasPipe:1b}},{Slot:6b,id:"minecraft:iron_ingot"},{Slot:7b,id:"minecraft:iron_ingot"},{Slot:8b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_gas_compressor
# cylinder - 6978074
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:bucket"},{Slot:5b,id:"minecraft:iron_ingot"},{Slot:7b,id:"minecraft:iron_ingot"}]} run function smd:crafting/recipe_cylinder
# injector - 6978075
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,tag:{isAdvancedHook:1b}},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,tag:{isGasPump:1b}},{Slot:5b,id:"minecraft:iron_ingot"},{Slot:7b,tag:{isGasValve:1b}}]} run function smd:crafting/recipe_injector
# ejector - 6978076
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,tag:{isInjector:1b}},{Slot:2b,tag:{isFan:1b}}]} run function smd:crafting/recipe_ejector
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,tag:{isFan:1b}},{Slot:4b,tag:{isInjector:1b}},{Slot:5b,tag:{isFan:1b}}]} run function smd:crafting/recipe_ejector
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b,tag:{isFan:1b}},{Slot:7b,tag:{isInjector:1b}},{Slot:8b,tag:{isFan:1b}}]} run function smd:crafting/recipe_ejector
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:3b,tag:{isInjector:1b}},{Slot:6b,tag:{isFan:1b}}]} run function smd:crafting/recipe_ejector
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,tag:{isFan:1b}},{Slot:4b,tag:{isInjector:1b}},{Slot:7b,tag:{isFan:1b}}]} run function smd:crafting/recipe_ejector
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b,tag:{isFan:1b}},{Slot:5b,tag:{isInjector:1b}},{Slot:8b,tag:{isFan:1b}}]} run function smd:crafting/recipe_ejector
# smd_core - 6978077
#   0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:stone_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:6b,tag:{isEjector:1b}},{Slot:8b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:stone_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:8b,tag:{isEjector:1b}},{Slot:6b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:oak_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:6b,tag:{isEjector:1b}},{Slot:8b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:oak_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:8b,tag:{isEjector:1b}},{Slot:6b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:spruce_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:6b,tag:{isEjector:1b}},{Slot:8b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:spruce_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:8b,tag:{isEjector:1b}},{Slot:6b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:birch_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:6b,tag:{isEjector:1b}},{Slot:8b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:birch_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:8b,tag:{isEjector:1b}},{Slot:6b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:jungle_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:6b,tag:{isEjector:1b}},{Slot:8b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:jungle_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:8b,tag:{isEjector:1b}},{Slot:6b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:acacia_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:6b,tag:{isEjector:1b}},{Slot:8b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:acacia_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:8b,tag:{isEjector:1b}},{Slot:6b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:dark_oak_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:6b,tag:{isEjector:1b}},{Slot:8b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,tag:{isFan:1b}},{Slot:1b,id:"minecraft:dark_oak_button"},{Slot:2b,tag:{isFan:1b}},{Slot:3b,id:"minecraft:lead"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,id:"minecraft:lead"},{Slot:8b,tag:{isEjector:1b}},{Slot:6b,tag:{isInjector:1b}}]} run function smd:crafting/recipe_core_0
#   1
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,tag:{isCore:1b,Length:0}},{Slot:6b,id:"minecraft:string"},{Slot:7b,id:"minecraft:string"},{Slot:8b,id:"minecraft:string"}]} run function smd:crafting/recipe_core_1
#   2
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,tag:{isCore:1b,Length:1}},{Slot:6b,id:"minecraft:string"},{Slot:7b,id:"minecraft:string"},{Slot:8b,id:"minecraft:string"}]} run function smd:crafting/recipe_core_2
#   3
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,tag:{isCore:1b,Length:2}},{Slot:6b,id:"minecraft:string"},{Slot:7b,id:"minecraft:string"},{Slot:8b,id:"minecraft:string"}]} run function smd:crafting/recipe_core_3
#   4
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,tag:{isCore:1b,Length:3}},{Slot:6b,id:"minecraft:string"},{Slot:7b,id:"minecraft:string"},{Slot:8b,id:"minecraft:string"}]} run function smd:crafting/recipe_core_4
#   5
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,tag:{isCore:1b,Length:4}},{Slot:6b,id:"minecraft:string"},{Slot:7b,id:"minecraft:string"},{Slot:8b,id:"minecraft:string"}]} run function smd:crafting/recipe_core_5
#   6
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,tag:{isCore:1b,Length:5}},{Slot:6b,id:"minecraft:string"},{Slot:7b,id:"minecraft:string"},{Slot:8b,id:"minecraft:string"}]} run function smd:crafting/recipe_core_6
#   7
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,tag:{isCore:1b,Length:6}},{Slot:6b,id:"minecraft:string"},{Slot:7b,id:"minecraft:string"},{Slot:8b,id:"minecraft:string"}]} run function smd:crafting/recipe_core_7
#   8
execute if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,tag:{isCore:1b,Length:7}},{Slot:6b,id:"minecraft:string"},{Slot:7b,id:"minecraft:string"},{Slot:8b,id:"minecraft:string"}]} run function smd:crafting/recipe_core_8
# smd_sword - 6978078, smd - 6978079
# smd assembly table - 6978078
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,tag:{isFan:1b}},{Slot:5b,id:"minecraft:iron_ingot"},{Slot:7b,id:"minecraft:crafting_table"}]} run function smd:crafting/recipe_smd_assembly_table
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,tag:{isFan:1b}},{Slot:2b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:crafting_table"}]} run function smd:crafting/recipe_smd_assembly_table