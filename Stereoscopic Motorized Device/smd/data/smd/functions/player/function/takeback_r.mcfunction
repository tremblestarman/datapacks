scoreboard players reset @s cStringLengthR
scoreboard players reset @s lStringLengthR
tag @p remove smd_hit_r
tag @p remove smd_right_attached

execute if entity @s[tag=!data_need_update,tag=smd_left_attached,tag=!smd_right_attached] run function smd:player/function/shot_right
execute if entity @s[tag=!data_need_update,tag=!smd_left_attached,tag=smd_right_attached] run function smd:player/function/shot_left
execute if entity @s[tag=!data_need_update,tag=smd_left_attached,tag=smd_right_attached] run function smd:player/function/shot_all
execute if entity @s[tag=!data_need_update,tag=!smd_left_attached,tag=!smd_right_attached] run function smd:player/equip_offhand

execute positioned ~ ~1.5 ~ run playsound minecraft:item.flintandsteel.use player @s ^-0.5 ^ ^ 0.15 1.8