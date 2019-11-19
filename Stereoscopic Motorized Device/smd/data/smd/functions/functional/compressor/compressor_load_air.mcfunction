# add gas
scoreboard players add mb var 1000
execute if score mb var matches 8001.. run scoreboard players set mb var 8000
# set type
execute if score gas var matches 0 run scoreboard players set gas var -1

# store
execute as @e[tag=cylinder_loaded,sort=nearest,limit=1] store result entity @s HandItems[0].tag.MB int 1 run scoreboard players get mb var
execute as @e[tag=cylinder_loaded,sort=nearest,limit=1] store result entity @s HandItems[0].tag.GAS int 1 run scoreboard players get gas var
# stat
execute if score mb var matches 1000..1999 as @e[tag=cylinder_loaded,sort=nearest,limit=1] run execute as @s run data modify entity @s HandItems[0].tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §41/8§f)\"]"] 
execute if score mb var matches 2000..2999 as @e[tag=cylinder_loaded,sort=nearest,limit=1] run execute as @s run data modify entity @s HandItems[0].tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §c2/8§f)\"]"] 
execute if score mb var matches 3000..3999 as @e[tag=cylinder_loaded,sort=nearest,limit=1] run execute as @s run data modify entity @s HandItems[0].tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §63/8§f)\"]"] 
execute if score mb var matches 4000..4999 as @e[tag=cylinder_loaded,sort=nearest,limit=1] run execute as @s run data modify entity @s HandItems[0].tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §64/8§f)\"]"] 
execute if score mb var matches 5000..5999 as @e[tag=cylinder_loaded,sort=nearest,limit=1] run execute as @s run data modify entity @s HandItems[0].tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §e5/8§f)\"]"] 
execute if score mb var matches 6000..6999 as @e[tag=cylinder_loaded,sort=nearest,limit=1] run execute as @s run data modify entity @s HandItems[0].tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §e6/8§f)\"]"] 
execute if score mb var matches 7000..7999 as @e[tag=cylinder_loaded,sort=nearest,limit=1] run execute as @s run data modify entity @s HandItems[0].tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §f7/8§f)\"]"] 
execute if score mb var matches 8000 as @e[tag=cylinder_loaded,sort=nearest,limit=1] run execute as @s run data modify entity @s HandItems[0].tag.display.Lore set value ["[\"§f(§f压缩空气 §f: §f满§f)\"]"] 

replaceitem entity @s weapon.mainhand minecraft:air
tag @s add gas_load_done

execute at @s run particle minecraft:smoke ~-0.2 ~0.5 ~ 0.1 0.1 0.1 0 5
execute at @e[tag=cylinder_loaded] run playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 1 0.8