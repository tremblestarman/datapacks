execute if block ~ ~ ~ minecraft:fire run tag @s add explode
execute if block ~ ~1 ~ minecraft:fire run tag @s add explode
execute if block ~ ~-1 ~ minecraft:fire run tag @s add explode
execute if block ~1 ~ ~ minecraft:fire run tag @s add explode
execute if block ~-1 ~ ~ minecraft:fire run tag @s add explode
execute if block ~ ~ ~1 minecraft:fire run tag @s add explode
execute if block ~ ~ ~-1 minecraft:fire run tag @s add explode
execute if block ~ ~ ~ minecraft:lava run tag @s add explode
execute if block ~ ~1 ~ minecraft:lava run tag @s add explode
execute if block ~ ~-1 ~ minecraft:lava run tag @s add explode
execute if block ~1 ~ ~ minecraft:lava run tag @s add explode
execute if block ~-1 ~ ~ minecraft:lava run tag @s add explode
execute if block ~ ~ ~1 minecraft:lava run tag @s add explode
execute if block ~ ~ ~-1 minecraft:lava run tag @s add explode
execute if block ~ ~ ~ minecraft:torch run tag @s add explode
execute if block ~ ~1 ~ minecraft:torch run tag @s add explode
execute if block ~ ~-1 ~ minecraft:torch run tag @s add explode
execute if block ~1 ~ ~ minecraft:torch run tag @s add explode
execute if block ~-1 ~ ~ minecraft:torch run tag @s add explode
execute if block ~ ~ ~1 minecraft:torch run tag @s add explode
execute if block ~ ~ ~-1 minecraft:torch run tag @s add explode
execute if block ~ ~ ~ minecraft:campfire run tag @s add explode
execute if block ~ ~1 ~ minecraft:campfire run tag @s add explode
execute if block ~ ~-1 ~ minecraft:campfire run tag @s add explode
execute if block ~1 ~ ~ minecraft:campfire run tag @s add explode
execute if block ~-1 ~ ~ minecraft:campfire run tag @s add explode
execute if block ~ ~ ~1 minecraft:campfire run tag @s add explode
execute if block ~ ~ ~-1 minecraft:campfire run tag @s add explode
execute if block ~ ~ ~ minecraft:furnace[lit=true] run tag @s add explode
execute if block ~ ~1 ~ minecraft:furnace[lit=true] run tag @s add explode
execute if block ~ ~-1 ~ minecraft:furnace[lit=true] run tag @s add explode
execute if block ~1 ~ ~ minecraft:furnace[lit=true] run tag @s add explode
execute if block ~-1 ~ ~ minecraft:furnace[lit=true] run tag @s add explode
execute if block ~ ~ ~1 minecraft:furnace[lit=true] run tag @s add explode
execute if block ~ ~ ~-1 minecraft:furnace[lit=true] run tag @s add explode
execute as @s[tag=explode] run function smd:functional/gas/gas_explosion
data merge entity @s[nbt=!{Age:-32768s}] {Age:-32768s}
kill @s[tag=explode]