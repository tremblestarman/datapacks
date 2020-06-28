execute as @e[tag=entitySelected] store result score @s tx run data get entity @e[tag=postionMark,limit=1] Pos[0] 1000
execute as @e[tag=entitySelected] store result score @s ty run data get entity @e[tag=postionMark,limit=1] Pos[1] 1000
execute as @e[tag=entitySelected] store result score @s tz run data get entity @e[tag=postionMark,limit=1] Pos[2] 1000

tag @a remove positionSelecting
scoreboard players reset @a rightclick
tag @e[tag=entitySelected] add positionSelected