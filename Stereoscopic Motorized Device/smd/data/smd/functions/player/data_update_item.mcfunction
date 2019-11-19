execute if entity @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}},distance=..1,sort=nearest,limit=1] run tag @s remove data_need_update
execute if entity @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}},distance=..1,sort=nearest,limit=1] run title @s actionbar [""]
execute if entity @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}},distance=..1,sort=nearest,limit=1] run title @s times 0 1 0
execute store result entity @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}},distance=..1,sort=nearest,limit=1] Item.tag.CompressedGas.tag.MB int 1 run scoreboard players get @s playerGas
execute store result entity @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}},distance=..1,sort=nearest,limit=1] Item.tag.CompressedAir.tag.MB int 1 run scoreboard players get @s playerAir

execute if entity @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}},distance=..1,sort=nearest,limit=1] run say item_updated
execute if entity @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}},distance=..1,sort=nearest,limit=1] run function smd:player/score_reset

execute as @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}},distance=..1,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§8放置在快捷物品栏末位以穿戴设备\"]"]
execute as @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}},distance=..1,sort=nearest,limit=1] run data modify entity @s Item.tag.SMDisUsing set value 0b