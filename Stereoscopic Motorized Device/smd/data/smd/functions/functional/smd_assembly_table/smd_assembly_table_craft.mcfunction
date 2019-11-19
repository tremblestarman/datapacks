summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[smd_assembly_craft]}
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item set from block ~ ~ ~ Items[{Slot:4b}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.display.Name set value "{\"text\":\"§f立体机动装置\"}"
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.display.Lore set value ["[\"§8放置在快捷物品栏末位以穿戴设备\"]"]
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.Unbreakable set value 1b
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.CustomModelData set value 6978078
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.isSMD set value 1b

# mainhand weapon
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.MainHandWeapon set from block ~ ~ ~ Items[{Slot:4b}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.MainHandWeapon.Count set value 1b
# offhand weapon
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.OffHandWeapon set from block ~ ~ ~ Items[{Slot:0b}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.OffHandWeapon.Count set value 1b
# compressed gas
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.CompressedGas set from block ~ ~ ~ Items[{tag:{GAS:1}}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.CompressedGas.Count set value 1b
# compressed air
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.CompressedAir set from block ~ ~ ~ Items[{tag:{GAS:-1}}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.CompressedAir.Count set value 1b
# core
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.Core set from block ~ ~ ~ Items[{tag:{isCore:1b}}]
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_assembly_craft] Item.tag.Core.Count set value 1b

function smd:functional/smd_assembly_table/remove_item
function smd:functional/smd_assembly_table/effect