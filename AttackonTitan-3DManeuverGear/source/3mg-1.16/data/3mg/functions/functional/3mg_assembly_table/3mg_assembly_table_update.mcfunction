data merge block ~ ~ ~ {CustomName:'{"translate":"3mg.tip.3mg_assembly_table"}'}

# destroyed
execute if block ~ ~ ~ #minecraft:air run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_destroy
execute as @e[tag=3mgassembly_texture,limit=1,sort=nearest,nbt=!{Fire:10s}] run data merge entity @s {Fire:10s}

# assemble
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft

execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:wooden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:iron_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:stone_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:golden_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:wooden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:iron_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:stone_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:golden_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:diamond_sword"},{Slot:1b,tag:{3mgisCylinder:1b,GAS:-1}},{Slot:2b,tag:{3mgisCore:1b}},{Slot:3b,tag:{3mgisCylinder:1b,GAS:1}},{Slot:4b,id:"minecraft:diamond_sword"}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_craft

# disassemble
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_disassemble_0
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_disassemble_1
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:2b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_disassemble_2
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_disassemble_3
execute unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b}]} if block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,tag:{3mgis3mg:1b,3mgisUsing:0b}}]} run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_disassemble_4