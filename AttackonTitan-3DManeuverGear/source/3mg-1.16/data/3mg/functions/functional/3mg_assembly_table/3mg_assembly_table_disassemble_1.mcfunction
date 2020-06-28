summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[3mg_disassemble]}
# mainhand weapon
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.MainHandWeapon
tag @e[tag=3mg_disassemble] remove 3mg_disassemble

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[3mg_disassemble]}
# offhand weapon
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.OffHandWeapon
tag @e[tag=3mg_disassemble] remove 3mg_disassemble

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[3mg_disassemble]}
# compressed gas
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.CompressedGas
execute store result score mb var run data get block ~ ~ ~ Items[{Slot:1b}].tag.CompressedGas.tag.MB
execute if score mb var matches ..0 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data remove entity @s Item.tag.display.Lore
execute if score mb var matches ..0 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.MB set value 0
execute if score mb var matches 1..999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.gas.0"}]']
execute if score mb var matches 1000..1999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.gas.1"}]']
execute if score mb var matches 2000..2999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.gas.2"}]']
execute if score mb var matches 3000..3999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.gas.3"}]']
execute if score mb var matches 4000..4999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.gas.4"}]']
execute if score mb var matches 5000..5999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.gas.5"}]']
execute if score mb var matches 6000..6999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.gas.6"}]']
execute if score mb var matches 7000..7999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.gas.7"}]']
execute if score mb var matches 8000 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.gas.8"}]']
tag @e[tag=3mg_disassemble] remove 3mg_disassemble

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[3mg_disassemble]}
# compressed air
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.CompressedAir
execute store result score mb var run data get block ~ ~ ~ Items[{Slot:1b}].tag.CompressedAir.tag.MB
execute if score mb var matches ..0 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data remove entity @s Item.tag.display.Lore
execute if score mb var matches ..0 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.MB set value 0
execute if score mb var matches 1..999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.air.0"}]']
execute if score mb var matches 1000..1999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.air.1"}]']
execute if score mb var matches 2000..2999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.air.2"}]']
execute if score mb var matches 3000..3999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.air.3"}]']
execute if score mb var matches 4000..4999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.air.4"}]']
execute if score mb var matches 5000..5999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.air.5"}]']
execute if score mb var matches 6000..6999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.air.6"}]']
execute if score mb var matches 7000..7999 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.air.7"}]']
execute if score mb var matches 8000 as @e[tag=3mg_disassemble,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Lore set value ['[{"translate":"3mg.cylinder.air.8"}]']
tag @e[tag=3mg_disassemble] remove 3mg_disassemble

scoreboard players reset mb var

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:[3mg_disassemble]}
# core
data modify entity @e[type=item,sort=nearest,limit=1,tag=3mg_disassemble] Item set from block ~ ~ ~ Items[{Slot:1b}].tag.Core
tag @e[tag=3mg_disassemble] remove 3mg_disassemble

function 3mg:functional/3mg_assembly_table/remove_item
function 3mg:functional/3mg_assembly_table/effect