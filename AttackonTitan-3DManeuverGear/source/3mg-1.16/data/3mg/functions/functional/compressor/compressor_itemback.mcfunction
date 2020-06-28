summon minecraft:item ~ ~0.8 ~ {Motion:[0d,0.2d,0d],Item:{id:"minecraft:stone",Count:1b},Tags:[compressor_return]}
data modify entity @e[tag=compressor_return,sort=nearest,limit=1] Item set from entity @s HandItems[0]
tag @e[tag=compressor_return] remove compressor_return
replaceitem entity @s weapon.mainhand minecraft:air
execute at @s run particle minecraft:smoke ~ ~0.8 ~ 0.1 0.1 0.1 0 3
execute at @s run playsound minecraft:entity.item.break block @a ~ ~ ~