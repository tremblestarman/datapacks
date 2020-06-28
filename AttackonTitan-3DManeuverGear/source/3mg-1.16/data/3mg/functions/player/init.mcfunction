# add tag
tag @s[tag=!3mg_equipping] add 3mg_equipping
tag @s[tag=data_need_update] remove data_need_update

# item add tag
setblock 0 0 0 minecraft:shulker_box
data modify block 0 0 0 Items append from entity @s Inventory[{Slot:8b}]
data modify block 0 0 0 Items[0].tag.3mgisUsing set value 1b
data modify block 0 0 0 Items[0].Slot set value 0b
data modify block 0 0 0 Items[0].tag.display.Lore[0] set value '[{"translate":"3mg.3mg.lore.using"}]'
# disable attack
execute store success score 3mg_attribute_result var run data modify block 0 0 0 Items[0].tag.AttributeModifiers set from block 0 0 0 Items[0].tag.AttributeModifiersCopy
execute if score 3mg_attribute_result var matches ..0 run say 1
execute if score 3mg_attribute_result var matches ..0 run data remove block 0 0 0 Items[0].tag.AttributeModifiers
scoreboard players reset 3mg_attribute_result var
data remove block 0 0 0 Items[0].tag.Unbreakable
data modify block 0 0 0 Items[0].tag.HideFlags set value 0
loot replace entity @s hotbar.8 1 mine 0 0 0 diamond_pickaxe{isShulkerMarker:1b}
setblock 0 0 0 minecraft:air
#say selected

# score set
#   gas
execute store result score @s playerGas run data get entity @s Inventory[{Slot:8b}].tag.CompressedGas.tag.MB
#   air
execute store result score @s playerAir run data get entity @s Inventory[{Slot:8b}].tag.CompressedAir.tag.MB
#   string length
execute store result score @s stringLength run data get entity @s Inventory[{Slot:8b}].tag.Core.tag.Length 64

title @s times 0 1 0

playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 1 0.8