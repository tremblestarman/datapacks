summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:[smdassembly]}
fill ~ ~ ~ ~ ~ ~ minecraft:hopper replace minecraft:crafting_table
# look
execute run summon minecraft:armor_stand ~ ~-1.18 ~ {Tags:[smdassembly_texture],Marker:1,Invisible:1,Invulnerable:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b,tag:{CustomModelData:6978078}}],DisabledSlots:2039589}