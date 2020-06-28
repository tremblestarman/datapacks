summon minecraft:area_effect_cloud ^ ^ ^3 {Tags:[des_point]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[ori_point]}
execute store result score x2 var run data get entity @e[tag=des_point,limit=1] Pos[0] 1000
execute store result score y2 var run data get entity @e[tag=des_point,limit=1] Pos[1] 1000
execute store result score z2 var run data get entity @e[tag=des_point,limit=1] Pos[2] 1000
execute store result score x1 var run data get entity @e[tag=ori_point,limit=1] Pos[0] 1000
execute store result score y1 var run data get entity @e[tag=ori_point,limit=1] Pos[1] 1000
execute store result score z1 var run data get entity @e[tag=ori_point,limit=1] Pos[2] 1000
scoreboard players operation x2 var -= x1 var
scoreboard players operation y2 var -= y1 var
scoreboard players operation z2 var -= z1 var

execute positioned ~ ~0.0125 ~ run tag @e[type=pig,tag=3mg_fly,sort=nearest,limit=1] add force_add
execute as @e[tag=force_add] store result entity @s Motion[0] double 0.0005 run scoreboard players get x2 var
execute as @e[tag=force_add] store result entity @s Motion[1] double 0.0005 run scoreboard players get y2 var
execute as @e[tag=force_add] store result entity @s Motion[2] double 0.0005 run scoreboard players get z2 var
tag @s remove 3mg_gliding
tag @e[tag=force_add] remove force_add
kill @e[tag=des_point]
kill @e[tag=ori_point]