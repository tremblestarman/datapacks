summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[3mg_pickedup],PickupDelay:0}
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item set from entity @s Inventory[{Slot:8b}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item.tag.display.Lore append value '[{"translate":"3mg.3mg.lore.damage_out"}]'
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item.tag.AttributeModifiersCopy set from entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item.tag.AttributeModifiers
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item.tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"disable_attack",Amount:-100000,Operation:2,UUID:[I;1004154700,1030813965,1046205176,1146249408]}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item.tag.Unbreakable set value 1b
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item.tag.HideFlags set value 2
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_pickedup] Item.Count set value 1b
replaceitem entity @s hotbar.8 minecraft:air
tag @e[tag=3mg_pickedup] remove 3mg_pickedup