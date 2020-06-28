execute if entity @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run tag @s remove data_need_update
execute if entity @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run title @s actionbar [""]
execute if entity @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run title @s times 0 1 0
execute store result entity @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] Item.tag.CompressedGas.tag.MB int 1 run scoreboard players get @s playerGas
execute store result entity @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] Item.tag.CompressedAir.tag.MB int 1 run scoreboard players get @s playerAir

#execute if entity @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run say item_updated
execute if entity @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run function 3mg:player/score_reset

execute as @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run data modify entity @s Item.tag.MainHandWeapon.tag.Damage set from entity @s Item.tag.Damage
execute as @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore[0] set value '[{"translate":"3mg.3mg.lore"}]'
execute as @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run data modify entity @s Item.tag.3mgisUsing set value 0b
execute as @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run data modify entity @s Item.tag.AttributeModifiersCopy set from entity @s Item.tag.AttributeModifiers
execute as @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run data modify entity @s Item.tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"disable_attack",Amount:-100000,Operation:2,UUID:[I;1004154700,1030813965,1046205176,1146249408]}]
execute as @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run data modify entity @s Item.tag.Unbreakable set value 1b
execute as @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}},distance=..1,sort=nearest,limit=1] run data modify entity @s Item.tag.HideFlags set value 2