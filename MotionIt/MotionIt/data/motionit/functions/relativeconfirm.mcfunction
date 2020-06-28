# mark decimal places
execute if score x2 var >= 10000 con run tag @s add acy0
execute if score x2 var >= 1000 con if score x2 var < 10000 con run tag @s add acx1
execute if score x2 var >= 100 con if score x2 var < 1000 con run tag @s add acx2
execute if score x2 var >= 10 con if score x2 var < 100 con run tag @s add acx3
execute if score x2 var >= 1 con if score x2 var < 10 con run tag @s add acx4
execute if score x2 var < 1 con run tag @s add acx5

execute if score y2 var >= 10000 con run tag @s add acy0
execute if score y2 var >= 1000 con if score y2 var < 10000 con run tag @s add acy1
execute if score y2 var >= 100 con if score y2 var < 1000 con run tag @s add acy2
execute if score y2 var >= 10 con if score y2 var < 100 con run tag @s add acy3
execute if score y2 var >= 1 con if score y2 var < 10 con run tag @s add acy4
execute if score y2 var > 0 con if score y2 var < 1 con run tag @s add acy5
execute if score y2 var = 0 con run tag @s add acy4

execute if score z2 var >= 10000 con run tag @s add acz0
execute if score z2 var >= 1000 con if score z2 var < 10000 con run tag @s add acz1
execute if score z2 var >= 100 con if score z2 var < 1000 con run tag @s add acz2
execute if score z2 var >= 10 con if score z2 var < 100 con run say 1
execute if score z2 var >= 10 con if score z2 var < 100 con run tag @s add acz3
execute if score z2 var >= 1 con if score z2 var < 10 con run tag @s add acz4
execute if score z2 var < 1 con run tag @s add acz5