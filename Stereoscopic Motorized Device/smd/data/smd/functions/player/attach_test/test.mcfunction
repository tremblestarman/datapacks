function smd:player/function/takeback_l
function smd:player/function/takeback_r
execute if score @s stringLength matches 64 run function smd:player/attach_test/range_0
execute if score @s stringLength matches 128 run function smd:player/attach_test/range_1
execute if score @s stringLength matches 192 run function smd:player/attach_test/range_2
execute if score @s stringLength matches 256 run function smd:player/attach_test/range_3
execute if score @s stringLength matches 320 run function smd:player/attach_test/range_4
execute if score @s stringLength matches 384 run function smd:player/attach_test/range_5
execute if score @s stringLength matches 448 run function smd:player/attach_test/range_6
execute if score @s stringLength matches 512 run function smd:player/attach_test/range_7
scoreboard players set @s acceleration 20
particle minecraft:smoke ~ ~ ~ 0.3 0.3 0.3 0 10

execute if entity @s[tag=smd_left_attached] positioned ~ ~1.5 ~ run playsound minecraft:entity.boat.paddle_land player @s ^0.5 ^ ^ 0.5 2
execute if entity @s[tag=smd_right_attached] positioned ~ ~1.5 ~ run playsound minecraft:entity.boat.paddle_land player @s ^-0.5 ^ ^ 0.5 2

execute if entity @s[tag=smd_left_attached,tag=!smd_op] run scoreboard players remove @s playerGas 25
execute if entity @s[tag=smd_right_attached,tag=!smd_op] run scoreboard players remove @s playerGas 25
scoreboard players remove @s[tag=!smd_op] playerAir 30

execute if entity @s[tag=smd_left_attached,tag=!smd_right_attached] run function smd:player/function/shot_right
execute if entity @s[tag=!smd_left_attached,tag=smd_right_attached] run function smd:player/function/shot_left
execute if entity @s[tag=smd_left_attached,tag=smd_right_attached] run function smd:player/function/shot_all
execute if entity @s[tag=!smd_left_attached,tag=!smd_right_attached] run function smd:player/equip_offhand