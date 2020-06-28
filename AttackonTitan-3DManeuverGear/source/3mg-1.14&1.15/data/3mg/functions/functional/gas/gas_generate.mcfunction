# remove minecraft:glass_bottle 1
execute store result score item_count var run data get entity @s Item.Count
scoreboard players remove item_count var 1
execute as @s store result entity @s Item.Count byte 1 run scoreboard players get item_count var
scoreboard players reset item_count var

# summon
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glass_bottle",Count:1b,tag:{Enchantments:[{}],display:{Name:'{"translate":"3mg.gas"}',Lore:['[{"translate":"3mg.gas.lore"}]']},3mgisGas:1b,HideFlags:63}}}
scoreboard players reset @s var