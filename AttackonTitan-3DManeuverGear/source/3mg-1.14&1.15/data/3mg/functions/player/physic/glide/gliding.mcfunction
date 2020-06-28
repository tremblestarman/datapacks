execute positioned ~ ~0.0125 ~ run tag @e[type=pig,tag=3mg_fly,sort=nearest,limit=1] add force_add
scoreboard players remove @e[tag=force_add,scores={attach_x1=12..}] attach_x1 12
scoreboard players remove @e[tag=force_add,scores={attach_x1=1..11}] attach_x1 1
scoreboard players remove @e[tag=force_add,scores={attach_y1=54..}] attach_y1 54
scoreboard players remove @e[tag=force_add,scores={attach_y1=..53}] attach_y1 30
scoreboard players remove @e[tag=force_add,scores={attach_z1=12..}] attach_z1 12
scoreboard players remove @e[tag=force_add,scores={attach_z1=1..11}] attach_z1 1
execute as @e[tag=force_add] store result entity @s Motion[0] double 0.001 run scoreboard players get @s attach_x1
execute as @e[tag=force_add] store result entity @s Motion[1] double 0.001 run scoreboard players get @s attach_y1
execute as @e[tag=force_add] store result entity @s Motion[2] double 0.001 run scoreboard players get @s attach_z1
tag @e[tag=force_add] remove force_add