scoreboard players reset @s cStringLengthR
scoreboard players reset @s lStringLengthR
tag @s remove 3mg_hit_r
tag @s remove 3mg_right_attached
tag @s remove 3mg_hit

execute if entity @s[tag=!data_need_update,tag=3mg_left_attached,tag=!3mg_right_attached] run function 3mg:player/function/shot_right
execute if entity @s[tag=!data_need_update,tag=!3mg_left_attached,tag=3mg_right_attached] run function 3mg:player/function/shot_left
execute if entity @s[tag=!data_need_update,tag=3mg_left_attached,tag=3mg_right_attached] run function 3mg:player/function/shot_all
execute if entity @s[tag=!data_need_update,tag=!3mg_left_attached,tag=!3mg_right_attached] run function 3mg:player/equip_offhand

execute positioned ~ ~1.5 ~ run playsound minecraft:item.flintandsteel.use player @s ^-0.5 ^ ^ 0.15 1.8