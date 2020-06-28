# f * m0 / p
scoreboard players operation a var = f con
scoreboard players operation a var *= 1000 con
tellraw @a ["",{"text":"p = "},{"score":{"name":"p","objective":"con"},"color":"yellow"}]
tellraw @a ["",{"text":"m0 = "},{"score":{"name":"a","objective":"var"},"color":"yellow"}]
scoreboard players operation a var *= @s m0
scoreboard players operation a var /= p con
scoreboard players operation @s m0 = a var

tellraw @a ["",{"text":"m0 = "},{"score":{"name":"a","objective":"var"},"color":"yellow"}]