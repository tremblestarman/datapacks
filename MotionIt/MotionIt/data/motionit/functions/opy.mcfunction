# f * m1 - g * t / p
scoreboard players operation a var = f con
scoreboard players operation a var *= @s m1

scoreboard players operation b var = g con
scoreboard players operation b var *= @s t
execute if score y2 var >= 1000 con if score y2 var < 10000 con run scoreboard players operation b var *= 10 con
execute if score y2 var >= 100 con if score y2 var < 1000 con run scoreboard players operation b var *= 100 con
execute if score y2 var >= 10 con if score y2 var < 100 con run scoreboard players operation b var *= 1000 con
execute if score y2 var >= 1 con if score y2 var < 10 con run scoreboard players operation b var *= 10000 con
execute if score y2 var > 0 con if score y2 var < 1 con run scoreboard players operation b var *= 100000 con
execute if score y2 var = 0 con run scoreboard players operation b var *= 10000 con

scoreboard players operation a var -= b var
scoreboard players operation a var /= p con
scoreboard players operation a var *= 100 con
#tellraw @a ["",{"text":"f * m1 - g * t / p = "},{"score":{"name":"c","objective":"var"},"color":"yellow"}]

# g / f - g
scoreboard players operation c var = g con
scoreboard players operation c var *= 10000 con
scoreboard players operation c var /= f con

scoreboard players operation d var = g con
scoreboard players operation d var *= 100 con
scoreboard players operation c var -= d var

# set
scoreboard players operation a var += c var
scoreboard players operation @s m1 = a var

#tellraw @a ["",{"text":"g / f - g = "},{"score":{"name":"c","objective":"var"},"color":"yellow"}]