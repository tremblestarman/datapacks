# cylinder
execute positioned ~ ~-0.5 ~-0.06 as @e[tag=smdcompressor_cylinder,sort=nearest,distance=..0.01,limit=1] store result score item_test var run data get entity @s HandItems[0].Count
execute positioned ~ ~-0.5 ~-0.06 as @e[tag=smdcompressor_cylinder,sort=nearest,distance=..0.01,limit=1] if score item_test var matches 1.. as @s[nbt=!{HandItems:[{id:"minecraft:iron_nugget",tag:{isCylinder:1b}}]}] run function smd:functional/compressor/compressor_itemback
scoreboard players reset item_test var
# cylinder loaded
execute positioned ~ ~-0.5 ~-0.06 as @e[tag=smdcompressor_cylinder,sort=nearest,distance=..0.01,limit=1,nbt={HandItems:[{id:"minecraft:iron_nugget",tag:{isCylinder:1b}}]}] run tag @s add cylinder_loaded
#   - cylinder type (0: empty, 1: gas, -1: air)
execute as @e[tag=cylinder_loaded] store result score gas var run data get entity @s HandItems[0].tag.GAS
#   - cylinder mb
execute as @e[tag=cylinder_loaded] store result score mb var run data get entity @s HandItems[0].tag.MB

# gas
execute positioned ~-0.45 ~0.1 ~ as @e[tag=smdcompressor_gas,sort=nearest,distance=..0.01,limit=1] store result score item_test var run data get entity @s HandItems[0].Count
# unreplenished gas
execute positioned ~-0.45 ~0.1 ~ if entity @e[tag=cylinder_loaded] if score item_test var matches 1.. if score mb var matches ..7999 if score gas var matches 0..1 as @e[tag=smdcompressor_gas,sort=nearest,distance=..0.01,limit=1,nbt={HandItems:[{tag:{isGas:1b}}]}] run function smd:functional/compressor/compressor_load_gas
# unreplenished air
execute positioned ~-0.45 ~0.1 ~ if entity @e[tag=cylinder_loaded] if score item_test var matches 1.. if score mb var matches ..7999 if score gas var matches -1..0 as @e[tag=smdcompressor_gas,sort=nearest,distance=..0.01,limit=1,nbt={HandItems:[{id:"minecraft:glass_bottle"}]}] run function smd:functional/compressor/compressor_load_air
execute positioned ~-0.45 ~0.1 ~ if score item_test var matches 1.. as @e[tag=smdcompressor_gas,sort=nearest,distance=..0.01,limit=1,tag=!gas_load_done] run function smd:functional/compressor/compressor_itemback

# destroyed
execute if block ~ ~ ~ #minecraft:air run function smd:functional/compressor/compressor_destroy

tag @e[tag=gas_load_done] remove gas_load_done
tag @e[tag=cylinder_loaded] remove cylinder_loaded
scoreboard players reset item_test var
scoreboard players reset gas var
scoreboard players reset mb var