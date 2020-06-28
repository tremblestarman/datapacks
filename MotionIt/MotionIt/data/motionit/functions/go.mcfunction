# assign values to motion
execute as @s[tag=acx0] store result entity @s Motion[0] double 0.1 run scoreboard players get @s m0
execute as @s[tag=acx1] store result entity @s Motion[0] double 0.01 run scoreboard players get @s m0
execute as @s[tag=acx2] store result entity @s Motion[0] double 0.001 run scoreboard players get @s m0
execute as @s[tag=acx3] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s m0
execute as @s[tag=acx4] store result entity @s Motion[0] double 0.00001 run scoreboard players get @s m0
execute as @s[tag=acx5] store result entity @s Motion[0] double 0.000001 run scoreboard players get @s m0

execute as @s[tag=acy0] store result entity @s Motion[1] double 1 run scoreboard players get @s m1
execute as @s[tag=acy1] store result entity @s Motion[1] double 0.1 run scoreboard players get @s m1
execute as @s[tag=acy2] store result entity @s Motion[1] double 0.01 run scoreboard players get @s m1
execute as @s[tag=acy3] store result entity @s Motion[1] double 0.001 run scoreboard players get @s m1
execute as @s[tag=acy4] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s m1
execute as @s[tag=acy5] store result entity @s Motion[1] double 0.00001 run scoreboard players get @s m1

execute as @s[tag=acz0] store result entity @s Motion[2] double 0.1 run scoreboard players get @s m2
execute as @s[tag=acz1] store result entity @s Motion[2] double 0.01 run scoreboard players get @s m2
execute as @s[tag=acz2] store result entity @s Motion[2] double 0.001 run scoreboard players get @s m2
execute as @s[tag=acz3] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s m2
execute as @s[tag=acz4] store result entity @s Motion[2] double 0.00001 run scoreboard players get @s m2
execute as @s[tag=acz5] store result entity @s Motion[2] double 0.000001 run scoreboard players get @s m2

# avoid momentum loss
data merge entity @s {NoGravity:0b}