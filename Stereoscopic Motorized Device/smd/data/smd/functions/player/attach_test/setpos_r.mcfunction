tag @s add smd_right_attached
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[pos_mark]}
execute store result score @s attach_x1 run data get entity @e[tag=pos_mark,limit=1,sort=nearest] Pos[0]
execute store result score @s attach_y1 run data get entity @e[tag=pos_mark,limit=1,sort=nearest] Pos[1]
execute store result score @s attach_z1 run data get entity @e[tag=pos_mark,limit=1,sort=nearest] Pos[2]
#tellraw @p ["",{"text":"r:"},{"score":{"name":"@s","objective":"attach_x1"}},{"text":","},{"score":{"name":"@s","objective":"attach_y1"}},{"text":","},{"score":{"name":"@s","objective":"attach_z1"}}]
kill @e[tag=pos_mark]
scoreboard players set @s lStringLengthR 1000
scoreboard players set @s cStringLengthR 0