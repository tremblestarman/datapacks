# add tag
tag @s[tag=!smd_equipping] add smd_equipping
tag @s[tag=data_need_update] remove data_need_update

# item add tag
setblock ~ 255 ~ minecraft:shulker_box
data modify block ~ 255 ~ Items append from entity @s Inventory[{Slot:8b}]
data modify block ~ 255 ~ Items[0].tag.SMDisUsing set value 1b
data modify block ~ 255 ~ Items[0].Slot set value 0b
data modify block ~ 255 ~ Items[0].tag.display.Lore set value  ["[\"§7正在使用中... §8(放入背包以卸载设备)\"]"]
loot replace entity @s hotbar.8 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ minecraft:air
#say selected

# score set
#   gas
execute store result score @s playerGas run data get entity @s Inventory[{Slot:8b}].tag.CompressedGas.tag.MB
#   air
execute store result score @s playerAir run data get entity @s Inventory[{Slot:8b}].tag.CompressedAir.tag.MB
#   string length
execute store result score @s stringLength run data get entity @s Inventory[{Slot:8b}].tag.Core.tag.Length 64

title @s times 0 1 0

execute as @s at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 run summon minecraft:pig ~ ~ ~ {ActiveEffects:[{ShowParticles:0b,Duration:1000,Id:14b}],HandDropChances:[0f,0f],DeathLootTable:"",NoAI:1,Silent:1b,NoGravity:1b,Invulnerable:1b,Tags:[smd_fly],Saddle:1,Age:1s,Attributes:[{Base:0.1d,Name:"generic.maxHealth"}],Health:0.1f}

playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 1 0.8