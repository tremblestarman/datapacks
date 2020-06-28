scoreboard players set g con 0
scoreboard players set f con 0
# item & falling_block & tnt : g = -0.04, f = 0.02
execute as @s[type=#motionit:item] run scoreboard players set g con -4
execute as @s[type=#motionit:item] run scoreboard players set f con 2
# boat & minecart : g = -0.04, f = 0.05
execute as @s[type=#motionit:minecart] run scoreboard players set g con -4
execute as @s[type=#motionit:minecart] run scoreboard players set f con 5
# projectile : g = -0.03, f = 0.01
execute as @s[type=#motionit:projectile] run scoreboard players set g con -3
execute as @s[type=#motionit:projectile] run scoreboard players set f con 1
# player & others : g = 8, f = 2
execute if score g con = 0 con if score f con = 0 con run tag @s add others
execute as @s[tag=others] run scoreboard players set g con -8
execute as @s[tag=others] run scoreboard players set f con 2
tag @s[tag=others] remove others
# fireball & skull : g = 0, f = 0
execute as @s[type=#motionit:fireball] run scoreboard players set g con 0
execute as @s[type=#motionit:fireball] run scoreboard players set f con 0