summon minecraft:area_effect_cloud ^ ^ ^3 {Tags:[des_point]}
execute store result score x2 var run data get entity @e[tag=des_point,limit=1] Pos[0] 1000
execute store result score y2 var run data get entity @e[tag=des_point,limit=1] Pos[1] 1000
execute store result score z2 var run data get entity @e[tag=des_point,limit=1] Pos[2] 1000
execute store result score x1 var run data get entity @s Pos[0] 1000
execute store result score y1 var run data get entity @s Pos[1] 1000
execute store result score z1 var run data get entity @s Pos[2] 1000
scoreboard players operation x2 var -= x1 var
scoreboard players operation y2 var -= y1 var
scoreboard players operation z2 var -= z1 var
scoreboard players remove y2 var 600

execute positioned ~ ~0.0125 ~ run tag @e[type=pig,tag=smd_fly,sort=nearest,limit=1] add force_add
execute as @e[tag=force_add] store result entity @s Motion[0] double 0.00004 run scoreboard players get x2 var
execute as @e[tag=force_add] store result entity @s Motion[1] double 0.00004 run scoreboard players get y2 var
execute as @e[tag=force_add] store result entity @s Motion[2] double 0.00004 run scoreboard players get z2 var
tag @e[tag=force_add] remove force_add
kill @e[tag=des_point]