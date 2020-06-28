execute if score step var = 0 con as @s run function motionit:ui/clear

scoreboard players reset @s rightclick
scoreboard players add step var 1

execute if entity @e[type=!player,distance=..1] as @e[type=!player,distance=..1,limit=1] run tag @s add entitySelected
execute if entity @e[type=!player,distance=..1] as @e[tag=entitySelected] run data merge entity @s {Glowing:1b}
execute if entity @e[type=!player,distance=..1] run tag @s add motionProccessing
execute if entity @e[type=!player,distance=..1] run scoreboard players set @e[tag=entitySelected] t 20
execute if entity @e[type=!player,distance=..1] as @e[tag=entitySelected] run function motionit:ui/originupdate
execute unless entity @e[tag=entitySelected] if score step var matches ..199 positioned ^ ^ ^0.1 run function motionit:ui/raycast