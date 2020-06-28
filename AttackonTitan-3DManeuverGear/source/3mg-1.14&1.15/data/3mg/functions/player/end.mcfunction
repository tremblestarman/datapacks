# remove tags
tag @s[tag=3mg_equipping] remove 3mg_equipping
tag @s[tag=3mg_flying] remove 3mg_flying
scoreboard players reset @s acceleration
tag @s[tag=3mg_jet_end] remove 3mg_jet_end

# item data update
tag @s add data_need_update

# offhand clear
replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{3mgis3mgEP:1b}}]}] weapon.offhand air
function 3mg:player/not_offhand_clear

function 3mg:player/function/takeback_r
function 3mg:player/function/takeback_l

execute at @s positioned ~ ~0.0125 ~ as @e[type=pig,tag=3mg_fly,sort=nearest,limit=1] run data modify entity @s Health set value 0
execute as @s at @s positioned ~ ~1.17 ~ positioned ^ ^ ^1.8 run tag @e[tag=3mg_fly,sort=nearest,limit=1,distance=..0.01] add fly_need_kill

playsound minecraft:item.armor.equip_generic player @s ~ ~ ~ 1 0.8
#say ended