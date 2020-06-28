execute if score @s cStringLengthR < @s stringLength run scoreboard players add @s cStringLengthR 32
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[string_rm]}
execute store result entity @e[tag=string_rm,limit=1,sort=nearest] Pos[0] double 1 run scoreboard players get @s attach_x1
execute store result entity @e[tag=string_rm,limit=1,sort=nearest] Pos[1] double 1 run scoreboard players get @s attach_y1
execute store result entity @e[tag=string_rm,limit=1,sort=nearest] Pos[2] double 1 run scoreboard players get @s attach_z1
scoreboard players reset distance con
execute at @a facing entity @e[tag=string_rm,limit=1] feet run function 3mg:player/function/drawstring_r
execute if entity @s[tag=3mg_hit_r] if score @s cStringLengthR > @s lStringLengthR run function 3mg:player/function/takeback_r
execute if entity @s[tag=3mg_hit_r] if score @s cStringLengthR <= @s lStringLengthR run scoreboard players operation @s lStringLengthR = @s cStringLengthR
kill @e[tag=string_rm]