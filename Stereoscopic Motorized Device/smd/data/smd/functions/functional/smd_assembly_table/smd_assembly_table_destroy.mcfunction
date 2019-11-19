# return item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:crafting_table",Count:1b,tag:{isFan:1b,display:{Name:"{\"text\":\"§f立体机动装置装配台\"}",Lore:["[\"§8用于立体机动装置的组装与拆解\"]"]},CustomModelData:6978078}}}

# remove minecraft:hopper 1
execute store result score item_count var run data get entity @e[type=item,nbt={Item:{id:"minecraft:hopper"}},limit=1,sort=nearest] Item.Count
scoreboard players remove item_count var 1
execute as @e[type=item,nbt={Item:{id:"minecraft:hopper"}},limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get item_count var
scoreboard players reset item_count var

particle minecraft:large_smoke ~ ~0.2 ~ 0.1 0.1 0.1 0 3
kill @s
execute positioned ~ ~-1.18 ~ run kill @e[tag=smdassembly_texture,distance=..0.01,limit=1,sort=nearest]