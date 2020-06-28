summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:[3mgtable]}
fill ~ ~ ~ ~ ~ ~ minecraft:dropper[facing=up] replace minecraft:smithing_table
setblock ~ ~1 ~ minecraft:air destroy
# remove minecraft:dropper 1
execute store result score item_count var run data get entity @e[type=item,nbt={Item:{id:"minecraft:grindstone"}},limit=1,sort=nearest] Item.Count
scoreboard players remove item_count var 1
execute as @e[type=item,nbt={Item:{id:"minecraft:grindstone"}},limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get item_count var
scoreboard players reset item_count var
# look
summon minecraft:armor_stand ~ ~-0.8 ~-0.3 {Invulnerable:1,Marker:1,Tags:[3mgtable_texture],NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:grindstone",Count:1b}],DisabledSlots:2039583,ShowArms:1b,Rotation:[90f,0f]}
# advancement
execute unless entity @s[advancements={3mg:3mg/root=true}] run advancement grant @s only 3mg:3mg/root impossible