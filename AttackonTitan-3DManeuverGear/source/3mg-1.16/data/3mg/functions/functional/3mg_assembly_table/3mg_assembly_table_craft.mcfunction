summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[3mg_assembly_craft]}
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item set from block ~ ~ ~ Items[{Slot:4b}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.display.Name set value '{"translate":"3mg.3mg"}'
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.display.Lore set value ['[{"translate":"3mg.3mg.lore"}]']
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.CustomModelData set value 6978078
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.3mgis3mg set value 1b
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.3mgisUsing set value 0b

# disable attack
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.AttributeModifiersCopy set from entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.AttributeModifiers
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"disable_attack",Amount:-100000,Operation:2,UUID:[I;1004154700,1030813965,1046205176,1146249408]}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.Unbreakable set value 1b
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.HideFlags set value 2

# mainhand weapon
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.MainHandWeapon set from block ~ ~ ~ Items[{Slot:4b}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.MainHandWeapon.Count set value 1b
# offhand weapon
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.OffHandWeapon set from block ~ ~ ~ Items[{Slot:0b}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.OffHandWeapon.Count set value 1b
# compressed gas
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.CompressedGas set from block ~ ~ ~ Items[{tag:{GAS:1}}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.CompressedGas.Count set value 1b
# compressed air
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.CompressedAir set from block ~ ~ ~ Items[{tag:{GAS:-1}}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.CompressedAir.Count set value 1b
# core
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.Core set from block ~ ~ ~ Items[{tag:{3mgisCore:1b}}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_assembly_craft] Item.tag.Core.Count set value 1b

function 3mg:functional/3mg_assembly_table/remove_item
function 3mg:functional/3mg_assembly_table/effect