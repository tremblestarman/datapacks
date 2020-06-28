function 3mg:player/function/takeback_l
function 3mg:player/function/takeback_r
execute if score @s stringLength matches 64 run function 3mg:player/attach_test/range_0
execute if score @s stringLength matches 128 run function 3mg:player/attach_test/range_1
execute if score @s stringLength matches 192 run function 3mg:player/attach_test/range_2
execute if score @s stringLength matches 256 run function 3mg:player/attach_test/range_3
execute if score @s stringLength matches 320 run function 3mg:player/attach_test/range_4
execute if score @s stringLength matches 384 run function 3mg:player/attach_test/range_5
execute if score @s stringLength matches 448 run function 3mg:player/attach_test/range_6
execute if score @s stringLength matches 512 run function 3mg:player/attach_test/range_7
scoreboard players set @s acceleration 20
particle minecraft:smoke ~ ~ ~ 0.3 0.3 0.3 0 10

execute if entity @s[tag=3mg_left_attached] positioned ~ ~1.5 ~ run playsound minecraft:entity.boat.paddle_land player @s ^0.5 ^ ^ 0.5 2
execute if entity @s[tag=3mg_right_attached] positioned ~ ~1.5 ~ run playsound minecraft:entity.boat.paddle_land player @s ^-0.5 ^ ^ 0.5 2

execute if entity @s[tag=3mg_left_attached,tag=!3mg_op] run scoreboard players operation @s playerGas -= gas_consume con
execute if entity @s[tag=3mg_right_attached,tag=!3mg_op] run scoreboard players operation @s playerGas -= gas_consume con
scoreboard players operation @s[tag=!3mg_op] playerAir -= air_consume con

execute if entity @s[tag=3mg_left_attached,tag=!3mg_right_attached] run function 3mg:player/function/shot_right
execute if entity @s[tag=!3mg_left_attached,tag=3mg_right_attached] run function 3mg:player/function/shot_left
execute if entity @s[tag=3mg_left_attached,tag=3mg_right_attached] run function 3mg:player/function/shot_all
execute if entity @s[tag=!3mg_left_attached,tag=!3mg_right_attached] run function 3mg:player/equip_offhand