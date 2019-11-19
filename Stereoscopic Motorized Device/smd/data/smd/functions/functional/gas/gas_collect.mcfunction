execute if block ~ ~1 ~ minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~ ~-1 ~ minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~1 ~ ~ minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~-1 ~ ~ minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~ ~ ~1 minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~ ~ ~-1 minecraft:coal_ore run scoreboard players add @s var 1
# anti-despawn
data merge entity @s[nbt=!{Age:-32768s}] {Age:-32768s}
execute as @s[scores={var=1200..}] run function smd:functional/gas/gas_generate