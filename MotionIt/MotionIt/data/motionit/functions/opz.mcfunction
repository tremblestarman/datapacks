# f * m2 / p
scoreboard players operation a var = f con
scoreboard players operation a var *= 1000 con
scoreboard players operation a var *= @s m2
scoreboard players operation a var /= p con
scoreboard players operation @s m2 = a var

#tellraw @a ["",{"text":"m2 = "},{"score":{"name":"a","objective":"var"},"color":"yellow"}]