execute if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~ ~ ~ minecraft:air if block ~1 ~ ~ minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~ ~ ~ minecraft:air if block ~-1 ~ ~ minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~ ~ ~ minecraft:air if block ~ ~ ~1 minecraft:coal_ore run scoreboard players add @s var 1
execute if block ~ ~ ~ minecraft:air if block ~ ~ ~-1 minecraft:coal_ore run scoreboard players add @s var 1
# anti-despawn
data merge entity @s[nbt=!{Age:-32768s}] {Age:-32768s}
execute as @s[scores={var=1200..}] run function 3mg:functional/gas/gas_generate