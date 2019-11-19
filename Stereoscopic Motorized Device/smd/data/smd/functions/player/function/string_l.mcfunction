execute if score @s cStringLengthL < @s stringLength run scoreboard players add @s cStringLengthL 32
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[string_lm]}
execute store result entity @e[tag=string_lm,limit=1,sort=nearest] Pos[0] double 1 run scoreboard players get @s attach_x2
execute store result entity @e[tag=string_lm,limit=1,sort=nearest] Pos[1] double 1 run scoreboard players get @s attach_y2
execute store result entity @e[tag=string_lm,limit=1,sort=nearest] Pos[2] double 1 run scoreboard players get @s attach_z2
scoreboard players reset distance con
execute at @a facing entity @e[tag=string_lm,limit=1] feet run function smd:player/function/drawstring_l
execute if entity @s[tag=smd_hit_l] if score @s cStringLengthL > @s lStringLengthL run function smd:player/function/takeback_l
execute if entity @s[tag=smd_hit_l] if score @s cStringLengthL <= @s lStringLengthL run scoreboard players operation @s lStringLengthL = @s cStringLengthL
kill @e[tag=string_lm]