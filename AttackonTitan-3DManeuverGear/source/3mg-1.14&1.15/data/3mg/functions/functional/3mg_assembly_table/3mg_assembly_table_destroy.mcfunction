# return item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrel",Count:1b,tag:{BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{3mgisAssemblyTable:1b}}]},display:{Name:'{"translate":"3mg.3mg_assembly_table"}',Lore:['[{"translate":"3mg.3mg_assembly_table.lore"}]']},CustomModelData:6978078}}}

# remove minecraft:hopper 1
execute store result score item_count var run data get entity @e[type=item,nbt={Item:{id:"minecraft:hopper"}},limit=1,sort=nearest] Item.Count
scoreboard players remove item_count var 1
execute as @e[type=item,nbt={Item:{id:"minecraft:hopper"}},limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get item_count var
scoreboard players reset item_count var

particle minecraft:large_smoke ~ ~0.2 ~ 0.1 0.1 0.1 0 3
kill @s
execute positioned ~ ~-1.18 ~ run kill @e[tag=3mgassembly_texture,distance=..0.01,limit=1,sort=nearest]