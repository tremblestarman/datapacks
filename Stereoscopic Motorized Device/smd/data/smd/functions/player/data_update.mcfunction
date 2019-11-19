# update
setblock ~ 255 ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 255 ~ Items[0].id set from entity @s Inventory[{tag:{SMDisUsing:1b}}].id
data modify block ~ 255 ~ Items[0].tag set from entity @s Inventory[{tag:{SMDisUsing:1b}}].tag
data modify block ~ 255 ~ Items[0].Count set from entity @s Inventory[{tag:{SMDisUsing:1b}}].Count
tag @s remove data_need_update
execute store result block ~ 255 ~ Items[0].tag.CompressedGas.tag.MB int 1 run scoreboard players get @s playerGas
execute store result block ~ 255 ~ Items[0].tag.CompressedAir.tag.MB int 1 run scoreboard players get @s playerAir
data modify block ~ 255 ~ Items[0].tag.SMDisUsing set value 0b
data modify block ~ 255 ~ Items[0].tag.display.Lore set value ["[\"§8放置在快捷物品栏末位以穿戴设备\"]"]
loot replace entity @s[nbt={Inventory:[{Slot:0b,tag:{SMDisUsing:1b}}]}] hotbar.0 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:1b,tag:{SMDisUsing:1b}}]}] hotbar.1 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:2b,tag:{SMDisUsing:1b}}]}] hotbar.2 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:3b,tag:{SMDisUsing:1b}}]}] hotbar.3 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:4b,tag:{SMDisUsing:1b}}]}] hotbar.4 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:5b,tag:{SMDisUsing:1b}}]}] hotbar.5 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:6b,tag:{SMDisUsing:1b}}]}] hotbar.6 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:7b,tag:{SMDisUsing:1b}}]}] hotbar.7 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:8b,tag:{SMDisUsing:1b}}]}] hotbar.8 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:9b,tag:{SMDisUsing:1b}}]}] inventory.0 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:10b,tag:{SMDisUsing:1b}}]}] inventory.1 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:11b,tag:{SMDisUsing:1b}}]}] inventory.2 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:12b,tag:{SMDisUsing:1b}}]}] inventory.3 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:13b,tag:{SMDisUsing:1b}}]}] inventory.4 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:14b,tag:{SMDisUsing:1b}}]}] inventory.5 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:15b,tag:{SMDisUsing:1b}}]}] inventory.6 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:16b,tag:{SMDisUsing:1b}}]}] inventory.7 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:17b,tag:{SMDisUsing:1b}}]}] inventory.8 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:18b,tag:{SMDisUsing:1b}}]}] inventory.9 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:19b,tag:{SMDisUsing:1b}}]}] inventory.10 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:20b,tag:{SMDisUsing:1b}}]}] inventory.11 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:21b,tag:{SMDisUsing:1b}}]}] inventory.12 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:22b,tag:{SMDisUsing:1b}}]}] inventory.13 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:23b,tag:{SMDisUsing:1b}}]}] inventory.14 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:24b,tag:{SMDisUsing:1b}}]}] inventory.15 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:25b,tag:{SMDisUsing:1b}}]}] inventory.16 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:26b,tag:{SMDisUsing:1b}}]}] inventory.17 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:27b,tag:{SMDisUsing:1b}}]}] inventory.18 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:28b,tag:{SMDisUsing:1b}}]}] inventory.19 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:29b,tag:{SMDisUsing:1b}}]}] inventory.20 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:30b,tag:{SMDisUsing:1b}}]}] inventory.21 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:31b,tag:{SMDisUsing:1b}}]}] inventory.22 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:32b,tag:{SMDisUsing:1b}}]}] inventory.23 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:33b,tag:{SMDisUsing:1b}}]}] inventory.24 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:34b,tag:{SMDisUsing:1b}}]}] inventory.25 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s[nbt={Inventory:[{Slot:35b,tag:{SMDisUsing:1b}}]}] inventory.26 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ minecraft:air
#say updated
function smd:player/score_reset

title @s actionbar [""]
title @s times 10 70 20