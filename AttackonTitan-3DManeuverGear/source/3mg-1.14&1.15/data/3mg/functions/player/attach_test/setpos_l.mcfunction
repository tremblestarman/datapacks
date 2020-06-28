tag @s add 3mg_left_attached
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[pos_mark]}
execute store result score @s attach_x2 run data get entity @e[tag=pos_mark,limit=1,sort=nearest] Pos[0]
execute store result score @s attach_y2 run data get entity @e[tag=pos_mark,limit=1,sort=nearest] Pos[1]
execute store result score @s attach_z2 run data get entity @e[tag=pos_mark,limit=1,sort=nearest] Pos[2]
#tellraw @p ["",{"text":"l:"},{"score":{"name":"@s","objective":"attach_x2"}},{"text":","},{"score":{"name":"@s","objective":"attach_y2"}},{"text":","},{"score":{"name":"@s","objective":"attach_z2"}}]
kill @e[tag=pos_mark]
scoreboard players set @s lStringLengthL 1000
scoreboard players set @s cStringLengthL 0