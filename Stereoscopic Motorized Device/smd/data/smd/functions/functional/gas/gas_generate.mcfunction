# remove minecraft:glass_bottle 1
execute store result score item_count var run data get entity @s Item.Count
scoreboard players remove item_count var 1
execute as @s store result entity @s Item.Count byte 1 run scoreboard players get item_count var
scoreboard players reset item_count var

# summon
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"§f瓦斯\"}",Lore:["[\"§8请勿使其接近火源\"]"]},isGas:1b,Potion:"minecraft:long_poison",HideFlags:63}}}
scoreboard players reset @s var