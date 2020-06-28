summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[3mg_pickedup],PickupDelay:2s}
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item set from entity @s Inventory[{Slot:-106b}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item.Count set value 1b
replaceitem entity @s weapon.offhand minecraft:air
tag @e[tag=3mg_pickedup] remove 3mg_pickedup