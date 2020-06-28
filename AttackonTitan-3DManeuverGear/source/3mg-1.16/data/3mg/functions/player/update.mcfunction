# replace offhand
#   if in inventory but not in offhand
function 3mg:player/not_offhand_clear
#   kill all 3mg in the form of item
kill @e[type=item,nbt={Item:{tag:{3mgis3mgEP:1b}}}]
#   if off hand is not 3mg
execute if entity @s[nbt={Inventory:[{Slot:-106b}]},nbt=!{Inventory:[{Slot:-106b,tag:{3mgis3mgEP:1b}}]}] run function 3mg:player/forced_drop_offhand
#   if off hand is empty
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run function 3mg:player/equip_offhand

# update ui
execute positioned 0 0 0 run function 3mg:player/ui

# not flying
execute as @s[tag=!3mg_flying,nbt={Inventory:[{Slot:8b,tag:{3mgisUsing:1b}}]},scores={3mg_rightClick=1..,playerAir=1..}] at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 run summon minecraft:pig ~ ~ ~ {ActiveEffects:[{ShowParticles:0b,Duration:1000,Id:14b}],HandDropChances:[0f,0f],DeathLootTable:"none",NoAI:1,Silent:1b,NoGravity:1b,Invulnerable:1b,Tags:[3mg_fly],Saddle:1,Age:1,Attributes:[{Base:0.1d,Name:"minecraft:generic.max_health"}],Health:0.1f}
#execute as @s[tag=!3mg_flying,scores={playerAir=1..}] at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 run tag @e[type=pig,tag=3mg_ridden,sort=nearest,limit=1,distance=..0.1] add fly_need_kill
#execute as @s[tag=!3mg_flying,scores={playerAir=1..}] at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 run tp @e[tag=3mg_fly] ~ ~ ~
# on fly
    # if not flying, clear noai and nogravity
execute as @s[tag=!3mg_flying,tag=!3mg_hit,scores={playerAir=1..},nbt={RootVehicle:{Entity:{Tags:[3mg_fly],id:"minecraft:pig",Health:0.1f}}}] at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 as @e[tag=3mg_fly,sort=nearest,limit=1,distance=..0.1] run function 3mg:player/physic/clear_noai_nogravity
    # with no force, gliding
execute as @s[tag=3mg_flying] positioned ~ ~0.0125 ~ if entity @e[type=pig,tag=3mg_fly,sort=nearest,limit=1] run tag @s add 3mg_gliding
    # acceleration
execute as @s[scores={acceleration=20,playerAir=1..}] at @s positioned ~ ~1 ~ run playsound minecraft:item.firecharge.use player @s ^ ^ ^-1 0.6 0.5
execute as @s[scores={acceleration=20,playerAir=1..}] run scoreboard players remove @s[tag=!3mg_op] playerAir 15
execute as @s[scores={acceleration=20,playerAir=1..}] at @s run particle minecraft:explosion
execute as @s[scores={acceleration=20,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_0
execute as @s[scores={acceleration=19,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_1
execute as @s[scores={acceleration=18,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_2
execute as @s[scores={acceleration=17,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_3
execute as @s[scores={acceleration=16,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_4
execute as @s[scores={acceleration=15,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_5
execute as @s[scores={acceleration=14,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_6
execute as @s[scores={acceleration=13,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_7
execute as @s[scores={acceleration=9..12,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_8
execute as @s[scores={acceleration=4..8,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_9
execute as @s[scores={acceleration=0..3,playerAir=1..}] at @s run function 3mg:player/physic/accelerate_jet/accelerate_jet_10
execute as @s[scores={acceleration=0..20,playerAir=1..}] at @s run particle minecraft:cloud
    # fall flying
data modify entity @e[tag=3mg_ridden,limit=1,sort=nearest] FallFlying set value 1b
    # end acceleration
tag @s[tag=!3mg_jet_end,scores={acceleration=0}] add 3mg_jet_end
scoreboard players reset @s[scores={acceleration=0}] acceleration
scoreboard players remove @s[scores={acceleration=1..}] acceleration 1
execute as @s[tag=!3mg_flying,nbt={RootVehicle:{Entity:{Tags:[3mg_fly],id:"minecraft:pig",Health:0.1f}}}] run scoreboard players set @s acceleration 20
execute as @s[tag=!3mg_flying,nbt={RootVehicle:{Entity:{Tags:[3mg_fly],id:"minecraft:pig",Health:0.1f}}}] run tag @s add 3mg_flying

# right click & flying
execute as @s[tag=3mg_flying,scores={3mg_rightClick=1..}] at @s run function 3mg:player/attach_test/test
scoreboard players reset @a[scores={3mg_rightClick=1..}] 3mg_rightClick
# draw string
execute as @s[tag=3mg_right_attached] at @s positioned ~ ~2 ~ run function 3mg:player/function/string_r
execute as @s[tag=3mg_left_attached] at @s positioned ~ ~2 ~ run function 3mg:player/function/string_l

# flying and using string to pull
tag @s[tag=3mg_flying,tag=3mg_hit_l] add 3mg_hit
tag @s[tag=3mg_flying,tag=3mg_hit_r] add 3mg_hit
    # if hit, pull (with nogravity)
execute as @s[tag=3mg_hit] at @s run function 3mg:player/physic/pull/pulling
    # if not hit, clear nogravity
execute if entity @s[tag=!3mg_hit] positioned ~ ~0.0125 ~ run data modify entity @e[type=pig,tag=3mg_fly,sort=nearest,limit=1] NoGravity set value 0b

# flying and gliding
tag @e[tag=!3mg_flying] remove 3mg_gliding
tag @e[tag=!3mg_flying] remove 3mg_to_glide
tag @e[tag=3mg_flying,tag=!3mg_gliding] remove 3mg_to_glide
execute as @e[tag=3mg_flying,tag=3mg_gliding,tag=!3mg_to_glide] run function 3mg:player/physic/glide/glide_init
execute as @e[tag=3mg_flying,tag=3mg_gliding,tag=3mg_to_glide] run function 3mg:player/physic/glide/gliding

# pig not ridden
scoreboard players add @e[tag=3mg_fly,tag=!3mg_ridden] acceleration 1
execute as @e[type=pig,scores={acceleration=5..}] run data modify entity @s Saddle set value 0b
tag @e[type=pig,scores={acceleration=5..}] add fly_need_kill