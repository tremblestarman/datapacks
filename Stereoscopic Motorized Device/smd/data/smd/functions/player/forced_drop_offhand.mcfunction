summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[smd_pickedup],PickupDelay:2s}
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_pickedup] Item set from entity @s Inventory[{Slot:-106b}]
replaceitem entity @s weapon.offhand minecraft:air
tag @e[tag=smd_pickedup] remove smd_pickedup