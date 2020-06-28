# return item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrel",Count:1b,tag:{BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{3mgisGasCompressor:1b}}]},3mgisGasCompressor:1b,display:{Name:'{"translate":"3mg.gas_compressor"}'},CustomModelData:6978073}}}

# remove minecraft:skeleton_skull 1
execute store result score item_count var run data get entity @e[type=item,nbt={Item:{id:"minecraft:skeleton_skull"}},limit=1,sort=nearest] Item.Count
scoreboard players remove item_count var 1
execute as @e[type=item,nbt={Item:{id:"minecraft:skeleton_skull"}},limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get item_count var
scoreboard players reset item_count var

particle minecraft:large_smoke ~ ~0.2 ~ 0.1 0.1 0.1 0 3
kill @s
execute positioned ~ ~-1.06 ~ run kill @e[tag=3mgcompressor_texture,sort=nearest,distance=..0.01,limit=1]
execute positioned ~-0.45 ~0.1 ~ run kill @e[tag=3mgcompressor_gas,sort=nearest,distance=..0.01,limit=1]
execute positioned ~ ~-0.5 ~-0.06 run kill @e[tag=3mgcompressor_cylinder,sort=nearest,distance=..0.01,limit=1]