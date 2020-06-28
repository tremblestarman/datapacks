summon minecraft:area_effect_cloud ^ ^ ^0.5 {Tags:[des_point]}
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
scoreboard players operation x2 var *= control_factor con
scoreboard players operation y2 var *= control_factor con
scoreboard players operation z2 var *= control_factor con

execute positioned ~ ~0.0125 ~ run tag @e[type=pig,tag=3mg_fly,sort=nearest,limit=1] add force_add
data modify entity @e[tag=force_add,limit=1] NoGravity set value 1b
scoreboard players operation x3 var = x1 var
scoreboard players operation y3 var = y1 var
scoreboard players operation z3 var = z1 var
scoreboard players operation x4 var = x1 var
scoreboard players operation y4 var = y1 var
scoreboard players operation z4 var = z1 var
execute if entity @s[tag=3mg_right_attached] run scoreboard players operation x3 var = @s attach_x1
execute if entity @s[tag=3mg_right_attached] run scoreboard players operation y3 var = @s attach_y1
execute if entity @s[tag=3mg_right_attached] run scoreboard players operation z3 var = @s attach_z1
execute if entity @s[tag=3mg_right_attached] run scoreboard players operation x3 var *= 1000 con
execute if entity @s[tag=3mg_right_attached] run scoreboard players operation y3 var *= 1000 con
execute if entity @s[tag=3mg_right_attached] run scoreboard players operation z3 var *= 1000 con
scoreboard players operation x3 var -= x1 var
scoreboard players operation y3 var -= y1 var
scoreboard players operation z3 var -= z1 var
execute if entity @s[tag=3mg_left_attached] run scoreboard players operation x4 var = @s attach_x2
execute if entity @s[tag=3mg_left_attached] run scoreboard players operation y4 var = @s attach_y2
execute if entity @s[tag=3mg_left_attached] run scoreboard players operation z4 var = @s attach_z2
execute if entity @s[tag=3mg_left_attached] run scoreboard players operation x4 var *= 1000 con
execute if entity @s[tag=3mg_left_attached] run scoreboard players operation y4 var *= 1000 con
execute if entity @s[tag=3mg_left_attached] run scoreboard players operation z4 var *= 1000 con
scoreboard players operation x4 var -= x1 var
scoreboard players operation y4 var -= y1 var
scoreboard players operation z4 var -= z1 var

scoreboard players operation x3 var += x4 var
scoreboard players operation y3 var += y4 var
scoreboard players operation z3 var += z4 var
scoreboard players operation x3 var += x2 var
scoreboard players operation y3 var += y2 var
scoreboard players operation z3 var += z2 var

execute as @e[tag=force_add] store result entity @s Motion[0] double 0.000035 run scoreboard players get x3 var
execute as @e[tag=force_add] store result entity @s Motion[1] double 0.000035 run scoreboard players get y3 var
execute as @e[tag=force_add] store result entity @s Motion[2] double 0.000035 run scoreboard players get z3 var
tag @e[tag=force_add] remove force_add
tag @s remove 3mg_gliding
kill @e[tag=des_point]
kill @e[tag=ori_point]