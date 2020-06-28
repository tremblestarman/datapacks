# avoid momentum loss
data merge entity @s {NoGravity:1b}
# get g & f
execute as @s run function motionit:getparam

# flexible accurancy
#   get mx/y/z
execute as @s run function motionit:relativeswitch
execute as @s run function motionit:relativeconfirm

### Ignore : old method : inaccurate pow()
### scoreboard players operation p con = @s t
### function motionit:oppowc
### function motionit:oppow

#   exhaustive method to get constant : p = (1 - (1 - f) ^ t)
execute if score f con = 0 con run function motionit:pow/0
execute if score f con = 1 con run function motionit:pow/1
execute if score f con = 2 con run function motionit:pow/2
execute if score f con = 5 con run function motionit:pow/5
#   f * mx / p  or  f * mz / p 
execute as @s run function motionit:opx
execute as @s run function motionit:opz
#   ( f * my - gt ) / p + g / f - g
execute as @s run function motionit:opy

scoreboard players set g con 0
scoreboard players set f con 0