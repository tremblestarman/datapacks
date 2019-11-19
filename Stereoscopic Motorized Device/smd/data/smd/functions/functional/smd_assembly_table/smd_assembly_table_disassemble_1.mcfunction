summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[smd_disassemble]}
# mainhand weapon
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.MainHandWeapon
tag @e[tag=smd_disassemble] remove smd_disassemble

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[smd_disassemble]}
# offhand weapon
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.OffHandWeapon
tag @e[tag=smd_disassemble] remove smd_disassemble

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[smd_disassemble]}
# compressed gas
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.CompressedGas
execute store result score mb var run data get block ~ ~ ~ Items[{Slot:1b}].tag.CompressedGas.tag.MB
execute if score mb var matches 1000..1999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§8压缩瓦斯 §f: §41/8§f)\"]"] 
execute if score mb var matches 2000..2999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§8压缩瓦斯 §f: §c2/8§f)\"]"] 
execute if score mb var matches 3000..3999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§8压缩瓦斯 §f: §63/8§f)\"]"] 
execute if score mb var matches 4000..4999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§8压缩瓦斯 §f: §64/8§f)\"]"] 
execute if score mb var matches 5000..5999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§8压缩瓦斯 §f: §e5/8§f)\"]"] 
execute if score mb var matches 6000..6999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§8压缩瓦斯 §f: §e6/8§f)\"]"] 
execute if score mb var matches 7000..7999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§8压缩瓦斯 §f: §f7/8§f)\"]"] 
execute if score mb var matches 8000 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§8压缩瓦斯 §f: §f满§f)\"]"] 
tag @e[tag=smd_disassemble] remove smd_disassemble

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[smd_disassemble]}
# compressed air
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.CompressedAir
execute store result score mb var run data get block ~ ~ ~ Items[{Slot:1b}].tag.CompressedAir.tag.MB
execute if score mb var matches 1000..1999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §41/8§f)\"]"] 
execute if score mb var matches 2000..2999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §c2/8§f)\"]"] 
execute if score mb var matches 3000..3999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §63/8§f)\"]"] 
execute if score mb var matches 4000..4999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §64/8§f)\"]"] 
execute if score mb var matches 5000..5999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §e5/8§f)\"]"] 
execute if score mb var matches 6000..6999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §e6/8§f)\"]"] 
execute if score mb var matches 7000..7999 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §f7/8§f)\"]"] 
execute if score mb var matches 8000 as @e[tag=smd_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §f满§f)\"]"] 
tag @e[tag=smd_disassemble] remove smd_disassemble

scoreboard players reset mb var

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[smd_disassemble]}
# core
data modify entity @e[type=item,sort=nearest,limit=1,tag=smd_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.Core
tag @e[tag=smd_disassemble] remove smd_disassemble

function smd:functional/smd_assembly_table/remove_item
function smd:functional/smd_assembly_table/effect