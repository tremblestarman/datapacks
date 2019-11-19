# smdtable
#   place
execute as @a[scores={place_smith=1..}] at @s positioned ~ ~1.67 ~ run function smd:crafting/smdtable/smdtable_test_0
execute as @a[scores={place_grind=1..}] at @s positioned ~ ~1.67 ~ run function smd:crafting/smdtable/smdtable_test_1
#   after placed
execute as @e[tag=smdtable] at @s run function smd:crafting/smdtable/smdtable_update

# gas
#   gas collect
execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}}] at @s if block ~ ~ ~ minecraft:cave_air run function smd:functional/gas/gas_collect
#   gas explode
execute as @e[type=item,nbt={Item:{tag:{isGas:1}}}] at @s run function smd:functional/gas/gas_update

# compressor
#   place
execute as @a[scores={place_iron_block=1..}] at @s positioned ~ ~1.67 ~ run function smd:functional/compressor/compressor_test
#   after placed
execute as @e[tag=smdcompressor] at @s run function smd:functional/compressor/compressor_update

# smd_assembly_table
#   place
execute as @a[scores={place_crafttable=1..}] at @s positioned ~ ~1.67 ~ run function smd:functional/smd_assembly_table/smd_assembly_table_test
#   after placed
execute as @e[tag=smdassembly] at @s run function smd:functional/smd_assembly_table/smd_assembly_table_update


# *** MAIN ***
# player
#   on equip & not flying - init
execute as @a[tag=!data_need_update,tag=!smd_equipping,tag=!smd_flying,nbt={Inventory:[{Slot:8b,tag:{isSMD:1b}}]},nbt=!{Inventory:[{Slot:8b,tag:{SMDisUsing:1b}}]}] at @s run function smd:player/init

#   holding - update
execute as @a[tag=smd_equipping] at @s run function smd:player/update

#   not equipping - end
execute as @a[tag=smd_equipping,nbt=!{Inventory:[{Slot:8b,tag:{SMDisUsing:1b}}]}] at @s run function smd:player/end
#   flying but not on a pig - end
execute as @a[tag=smd_flying,nbt=!{RootVehicle:{Entity:{Tags:[smd_fly],id:"minecraft:pig"}}}] at @s run function smd:player/end
#   pig land - end
execute as @a[tag=smd_jet_end,nbt={RootVehicle:{Entity:{Tags:[smd_ridden],id:"minecraft:pig",Health:0.1f,OnGround:1b}}}] at @s run function smd:player/end
#       data update
execute as @a[tag=data_need_update,nbt={Inventory:[{tag:{SMDisUsing:1b}}]}] run function smd:player/data_update
execute as @a[tag=data_need_update] at @s run function smd:player/data_update_item
title @a[tag=data_need_update] actionbar ["正在卸载立体机动装置"]
#       prevent dropping
execute as @e[type=item,nbt={Item:{tag:{SMDisUsing:1b}}}] run data modify entity @s PickupDelay set value 0

# constant update
#   & pig
function smd:player/function/pig
#   reset
scoreboard players reset @a[scores={smd_rightClick=0..}] smd_rightClick