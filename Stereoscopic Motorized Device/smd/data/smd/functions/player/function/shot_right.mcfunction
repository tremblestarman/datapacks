setblock ~ 255 ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6978075}}]}
data modify block ~ 255 ~ Items[0].tag set from entity @s Inventory[{Slot:8b,tag:{SMDisUsing:1b}}].tag.OffHandWeapon.tag
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{SMDisUsing:1b,OffHandWeapon:{id:"minecraft:wooden_sword"}}}]}] run data modify block ~ 255 ~ Items[0].tag.CustomModelData set value 6978090
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{SMDisUsing:1b,OffHandWeapon:{id:"minecraft:iron_sword"}}}]}] run data modify block ~ 255 ~ Items[0].tag.CustomModelData set value 6978091
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{SMDisUsing:1b,OffHandWeapon:{id:"minecraft:stone_sword"}}}]}] run data modify block ~ 255 ~ Items[0].tag.CustomModelData set value 6978092
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{SMDisUsing:1b,OffHandWeapon:{id:"minecraft:golden_sword"}}}]}] run data modify block ~ 255 ~ Items[0].tag.CustomModelData set value 6978093
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{SMDisUsing:1b,OffHandWeapon:{id:"minecraft:diamond_sword"}}}]}] run data modify block ~ 255 ~ Items[0].tag.CustomModelData set value 6978094
data modify block ~ 255 ~ Items[0].tag.Unbreakable set value 1b
data modify block ~ 255 ~ Items[0].tag.isSMDEP set value 1b
data modify block ~ 255 ~ Items[0].tag.display set value {Name:"{\"text\":\"§f立体机动装置\"}",Lore:["[\"§8(扳机与副手武器,右钩射出)\"]"]}
loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
fill ~ 255 ~ ~ 255 ~ minecraft:air replace minecraft:shulker_box