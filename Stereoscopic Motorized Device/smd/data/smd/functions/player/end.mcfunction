# remove tags
tag @s[tag=smd_equipping] remove smd_equipping
tag @s[tag=smd_flying] remove smd_flying
scoreboard players reset @s acceleration
tag @s[tag=smd_jet_end] remove smd_jet_end

# item data update
tag @s add data_need_update

# offhand clear
replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{isSMDEP:1b}}]}] weapon.offhand air
function smd:player/not_offhand_clear

function smd:player/function/takeback_r
function smd:player/function/takeback_l

#say ended

execute as @e[tag=smd_ridden,nbt={OnGround:1b}] run data modify entity @s Health set value 0
execute as @s at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 run tag @e[tag=smd_fly,sort=nearest,limit=1,distance=..0.01] add fly_need_kill

playsound minecraft:item.armor.equip_generic player @s ~ ~ ~ 1 0.8