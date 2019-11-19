# replace offhand
#   if in inventory but not in offhand
function smd:player/not_offhand_clear
#   kill all smd in the form of item
kill @e[type=item,nbt={Item:{tag:{isSMDEP:1b}}}]
#   if off hand is not smd
execute if entity @s[nbt={Inventory:[{Slot:-106b}]},nbt=!{Inventory:[{Slot:-106b,tag:{isSMDEP:1b}}]}] run function smd:player/forced_drop_offhand
#   if off hand is empty
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run function smd:player/equip_offhand

# update ui
execute positioned ~ 255 ~ run function smd:player/ui

# not flying
execute as @s[tag=!smd_flying] at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 run tag @e[type=pig,tag=smd_ridden,sort=nearest,limit=1,distance=..0.1] add fly_need_kill
execute as @s[tag=!smd_flying] at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 run tp @e[tag=smd_fly] ~ ~ ~
# on fly
execute as @s[tag=!smd_flying,nbt={RootVehicle:{Entity:{Tags:[smd_fly],id:"minecraft:pig",Health:0.1f}}}] at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 as @e[tag=smd_fly,sort=nearest,limit=1,distance=..0.1] run function smd:player/physic/clear_noai_nogravity
execute as @s[scores={acceleration=20}] at @s positioned ~ ~1 ~ run playsound minecraft:item.firecharge.use player @s ^ ^ ^-1 0.6 0.5
execute as @s[scores={acceleration=20}] run scoreboard players remove @s[tag=!smd_op] playerAir 30
execute as @s[scores={acceleration=20}] at @s run particle minecraft:explosion
execute as @s[scores={acceleration=20}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_0
execute as @s[scores={acceleration=19}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_1
execute as @s[scores={acceleration=18}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_2
execute as @s[scores={acceleration=17}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_3
execute as @s[scores={acceleration=16}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_4
execute as @s[scores={acceleration=15}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_5
execute as @s[scores={acceleration=14}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_6
execute as @s[scores={acceleration=13}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_7
execute as @s[scores={acceleration=9..12}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_8
execute as @s[scores={acceleration=4..8}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_9
execute as @s[scores={acceleration=0..3}] at @s run function smd:player/physic/accelerate_jet/accelerate_jet_10
execute as @s[scores={acceleration=0..20}] at @s run particle minecraft:cloud
data modify entity @e[tag=smd_ridden,limit=1,sort=nearest] FallFlying set value 1b
tag @s[tag=!smd_jet_end,scores={acceleration=0}] add smd_jet_end
scoreboard players reset @s[scores={acceleration=0}] acceleration
scoreboard players remove @s[scores={acceleration=1..}] acceleration 1
execute as @s[tag=!smd_flying,nbt={RootVehicle:{Entity:{Tags:[smd_fly],id:"minecraft:pig",Health:0.1f}}}] at @s run scoreboard players set @s acceleration 20
execute as @s[tag=!smd_flying,nbt={RootVehicle:{Entity:{Tags:[smd_fly],id:"minecraft:pig",Health:0.1f}}}] run tag @s add smd_flying

# right click & flying
execute as @s[tag=smd_flying,scores={smd_rightClick=1..}] at @s run function smd:player/attach_test/test
scoreboard players reset @a[scores={smd_rightClick=1..}] smd_rightClick
# draw string
execute as @s[tag=smd_right_attached] at @s positioned ~ ~2 ~ run function smd:player/function/string_r
execute as @s[tag=smd_left_attached] at @s positioned ~ ~2 ~ run function smd:player/function/string_l

# flying and using string
execute as @s[tag=smd_flying,tag=smd_hit_l] run function smd:player/physic/add_force
execute as @s[tag=smd_flying,tag=smd_hit_r] run function smd:player/physic/add_force