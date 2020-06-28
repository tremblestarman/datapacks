# return item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:smithing_table",Count:1b}}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:grindstone",Count:1b}}

# remove minecraft:dropper 1
execute store result score item_count var run data get entity @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest] Item.Count
scoreboard players remove item_count var 1
execute as @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get item_count var
scoreboard players reset item_count var

particle minecraft:large_smoke ~ ~0.2 ~ 0.1 0.1 0.1 0 3
kill @s
execute positioned ~ ~-0.8 ~-0.3 run kill @e[tag=3mgtable_texture,distance=..0.01,limit=1,sort=nearest]