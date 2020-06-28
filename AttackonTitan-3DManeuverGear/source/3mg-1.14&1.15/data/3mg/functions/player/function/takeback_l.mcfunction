scoreboard players reset @s cStringLengthL
scoreboard players reset @s lStringLengthL
tag @p remove 3mg_hit_l
tag @p remove 3mg_left_attached

execute if entity @s[tag=!data_need_update,tag=3mg_left_attached,tag=!3mg_right_attached] run function 3mg:player/function/shot_right
execute if entity @s[tag=!data_need_update,tag=!3mg_left_attached,tag=3mg_right_attached] run function 3mg:player/function/shot_left
execute if entity @s[tag=!data_need_update,tag=3mg_left_attached,tag=3mg_right_attached] run function 3mg:player/function/shot_all
execute if entity @s[tag=!data_need_update,tag=!3mg_left_attached,tag=!3mg_right_attached] run function 3mg:player/equip_offhand

execute positioned ~ ~1.5 ~ run playsound minecraft:item.flintandsteel.use player @s ^0.5 ^ ^ 0.15 1.8