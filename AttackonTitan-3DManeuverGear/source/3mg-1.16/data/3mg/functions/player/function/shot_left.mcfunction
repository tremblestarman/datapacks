setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6978075}}]}
data modify block 0 0 0 Items[0].tag set from entity @s Inventory[{Slot:8b,tag:{3mgisUsing:1b}}].tag.OffHandWeapon.tag
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{3mgisUsing:1b,OffHandWeapon:{id:"minecraft:wooden_sword"}}}]}] run data modify block 0 0 0 Items[0].tag.CustomModelData set value 6978085
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{3mgisUsing:1b,OffHandWeapon:{id:"minecraft:iron_sword"}}}]}] run data modify block 0 0 0 Items[0].tag.CustomModelData set value 6978086
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{3mgisUsing:1b,OffHandWeapon:{id:"minecraft:stone_sword"}}}]}] run data modify block 0 0 0 Items[0].tag.CustomModelData set value 6978087
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{3mgisUsing:1b,OffHandWeapon:{id:"minecraft:golden_sword"}}}]}] run data modify block 0 0 0 Items[0].tag.CustomModelData set value 6978088
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{3mgisUsing:1b,OffHandWeapon:{id:"minecraft:diamond_sword"}}}]}] run data modify block 0 0 0 Items[0].tag.CustomModelData set value 6978089
data modify block 0 0 0 Items[0].tag.3mgis3mgEP set value 1b
data modify block 0 0 0 Items[0].tag.display set value {Name:'{"translate":"3mg.3mg"}',Lore:['[{"translate":"3mg.3mg.lore.offhand.shot_left"}]']}
loot replace entity @s weapon.offhand 1 mine 0 0 0 diamond_pickaxe{isShulkerMarker:1b}
fill 0 0 0 0 0 0 minecraft:air replace minecraft:shulker_box