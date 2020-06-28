# 3mgtable
#   place
execute as @a[scores={place_smith=1..}] at @s positioned ~ ~1.67 ~ run function 3mg:crafting/3mgtable/3mgtable_test_0
execute as @a[scores={place_grind=1..}] at @s positioned ~ ~1.67 ~ run function 3mg:crafting/3mgtable/3mgtable_test_1
#   after placed
execute as @e[tag=3mgtable] at @s run function 3mg:crafting/3mgtable/3mgtable_update

# gas
#   gas collect
execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}}] unless entity @s[nbt={Item:{tag:{3mgisGas:1b}}}] run tag @s add 3mg_is_glass_bottle
execute as @e[tag=3mg_is_glass_bottle] at @s run function 3mg:functional/gas/gas_collect
#   gas explode
execute as @e[type=item,nbt={Item:{tag:{3mgisGas:1b}}}] at @s run function 3mg:functional/gas/gas_update

# compressor
#   place
execute as @a[scores={place_barrel=1..}] at @s positioned ~ ~1.67 ~ run function 3mg:functional/compressor/compressor_test
#   after placed
execute as @e[tag=3mgcompressor] at @s run function 3mg:functional/compressor/compressor_update

# 3mg_assembly_table
#   place
execute as @a[scores={place_barrel=1..}] at @s positioned ~ ~1.67 ~ run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_test
#   after placed
execute as @e[tag=3mgassembly] at @s run function 3mg:functional/3mg_assembly_table/3mg_assembly_table_update

# clear place score
scoreboard players reset @s place_barrel

# *** MAIN ***
# player
#   on equip & not flying - init
execute as @a[tag=!data_need_update,tag=!3mg_equipping,tag=!3mg_flying,nbt={Inventory:[{Slot:8b,tag:{3mgis3mg:1b}}]},nbt=!{Inventory:[{Slot:8b,tag:{3mgisUsing:1b}}]}] at @s run function 3mg:player/init

#   holding - update
execute as @a[tag=3mg_equipping] at @s run function 3mg:player/update
#       run out (remain durable: 1 - attack, 2 - destory block)
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:wooden_sword",tag:{Damage:58,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_out
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:wooden_sword",tag:{Damage:57,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_out
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:stone_sword",tag:{Damage:130,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_out
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:stone_sword",tag:{Damage:129,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_out
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:iron_sword",tag:{Damage:249,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_out
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:iron_sword",tag:{Damage:248,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_out
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:golden_sword",tag:{Damage:31,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_out
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:golden_sword",tag:{Damage:30,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_ou
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:diamond_sword",tag:{Damage:1560,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_out
execute as @a[tag=3mg_equipping,nbt={Inventory:[{Slot:8b,id:"minecraft:diamond_sword",tag:{Damage:1559,3mgisUsing:1b}}]}] at @s run function 3mg:player/damage_out

#   not equipping - end
execute as @a[tag=3mg_equipping,nbt=!{Inventory:[{Slot:8b,tag:{3mgisUsing:1b}}]}] at @s run function 3mg:player/end
#   flying but not on a pig - end
execute as @a[tag=3mg_flying,nbt=!{RootVehicle:{Entity:{Tags:[3mg_fly],id:"minecraft:pig"}}}] at @s run function 3mg:player/end
#   flying but not equipped - end
execute as @a[tag=3mg_flying,nbt=!{Inventory:[{Slot:8b,tag:{3mgisUsing:1b}}]}] at @s run function 3mg:player/end
#   pig land - end
execute as @a[tag=3mg_jet_end] at @s unless block ~ ~-0.1 ~ #minecraft:air run function 3mg:player/end
execute as @a[tag=3mg_jet_end,nbt={RootVehicle:{Entity:{Tags:[3mg_ridden],id:"minecraft:pig",Health:0.1f,OnGround:1b}}}] at @s run function 3mg:player/end
#       data update
execute as @a[tag=!3mg_equipping] run replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{3mgis3mgEP:1b}}]}] weapon.offhand air
execute as @a[tag=data_need_update,nbt={Inventory:[{tag:{3mgisUsing:1b}}]}] run function 3mg:player/data_update
execute as @a[tag=data_need_update] at @s run function 3mg:player/data_update_item
title @a[tag=data_need_update] actionbar ["",{"translate":"3mg.tip.unequipping"}]

#       prevent dropping
execute as @e[type=item,nbt={Item:{tag:{3mgisUsing:1b}}}] run data modify entity @s PickupDelay set value 0

# constant update
#   & pig
function 3mg:player/function/pig
#   reset
scoreboard players reset @a[scores={3mg_rightClick=0..}] 3mg_rightClick

# advancements
execute as @a run function 3mg:player/advancements