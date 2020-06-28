# distance rounding
execute store result score x1 var run data get entity @s Pos[0] 1000
execute store result score y1 var run data get entity @s Pos[1] 1000
execute store result score z1 var run data get entity @s Pos[2] 1000
scoreboard players operation @s m0 = @s tx
scoreboard players operation @s m1 = @s ty
scoreboard players operation @s m2 = @s tz
scoreboard players operation x2 var = @s tx
scoreboard players operation y2 var = @s ty
scoreboard players operation z2 var = @s tz
scoreboard players operation x2 var -= x1 var
scoreboard players operation y2 var -= y1 var
scoreboard players operation z2 var -= z1 var
scoreboard players operation x2 var /= 1000 con
scoreboard players operation y2 var /= 1000 con
scoreboard players operation z2 var /= 1000 con
scoreboard players operation x3 var = x2 var
scoreboard players operation y3 var = y2 var
scoreboard players operation z3 var = z2 var
execute if score x2 var < 0 con run scoreboard players operation x2 var *= neg con
execute if score y2 var < 0 con run scoreboard players operation y2 var *= neg con
execute if score z2 var < 0 con run scoreboard players operation z2 var *= neg con

# flexibly standardize decimal place format
#   calculate relatively to improve accuracy
execute if score x2 var >= 10000 con run scoreboard players operation @s m0 = x3 var
execute if score x2 var >= 1000 con if score x2 var < 10000 con run execute store result score x1 var run data get entity @s Pos[0] 10
execute if score x2 var >= 1000 con if score x2 var < 10000 con run scoreboard players operation @s m0 /= 100 con
execute if score x2 var >= 100 con if score x2 var < 1000 con run execute store result score x1 var run data get entity @s Pos[0] 100
execute if score x2 var >= 100 con if score x2 var < 1000 con run scoreboard players operation @s m0 /= 10 con
execute if score x2 var >= 10 con if score x2 var < 100 con run execute store result score x1 var run data get entity @s Pos[0] 1000
execute if score x2 var >= 1 con if score x2 var < 10 con run execute store result score x1 var run data get entity @s Pos[0] 10000
execute if score x2 var >= 1 con if score x2 var < 10 con run scoreboard players operation @s m0 *= 10 con
execute if score x2 var < 1 con run execute store result score x1 var run data get entity @s Pos[0] 100000
execute if score x2 var < 1 con run scoreboard players operation @s m0 *= 100 con

execute if score y2 var >= 10000 con run scoreboard players operation @s m1 = y3 var
execute if score y2 var >= 1000 con if score y2 var < 10000 con run execute store result score y1 var run data get entity @s Pos[1] 10
execute if score y2 var >= 1000 con if score y2 var < 10000 con run scoreboard players operation @s m1 /= 100 con
execute if score y2 var >= 100 con if score y2 var < 1000 con run execute store result score y1 var run data get entity @s Pos[1] 100
execute if score y2 var >= 100 con if score y2 var < 1000 con run scoreboard players operation @s m1 /= 10 con
execute if score y2 var >= 10 con if score y2 var < 100 con run execute store result score y1 var run data get entity @s Pos[1] 1000
execute if score y2 var >= 1 con if score y2 var < 10 con run execute store result score y1 var run data get entity @s Pos[1] 10000
execute if score y2 var >= 1 con if score y2 var < 10 con run scoreboard players operation @s m1 *= 10 con
execute if score y2 var < 1 con run execute store result score y1 var run data get entity @s Pos[1] 100000
execute if score y2 var < 1 con run scoreboard players operation @s m1 *= 100 con

execute if score z2 var >= 10000 con run scoreboard players operation @s m2 = z3 var
execute if score z2 var >= 1000 con if score z2 var < 10000 con run execute store result score z1 var run data get entity @s Pos[2] 10
execute if score z2 var >= 1000 con if score z2 var < 10000 con run scoreboard players operation @s m2 /= 100 con
execute if score z2 var >= 100 con if score z2 var < 1000 con run execute store result score z1 var run data get entity @s Pos[2] 100
execute if score z2 var >= 100 con if score z2 var < 1000 con run scoreboard players operation @s m2 /= 10 con
execute if score z2 var >= 10 con if score z2 var < 100 con run execute store result score z1 var run data get entity @s Pos[2] 1000
execute if score z2 var >= 1 con if score z2 var < 10 con run execute store result score z1 var run data get entity @s Pos[2] 10000
execute if score z2 var >= 1 con if score z2 var < 10 con run scoreboard players operation @s m2 *= 10 con
execute if score z2 var < 1 con run execute store result score z1 var run data get entity @s Pos[2] 100000
execute if score z2 var < 1 con run scoreboard players operation @s m2 *= 100 con

# get difference
scoreboard players operation @s m0 -= x1 var
scoreboard players operation @s m1 -= y1 var
scoreboard players operation @s m2 -= z1 var

#tellraw @a ["",{"text":"x2 = "},{"score":{"name":"x2","objective":"var"},"color":"red"},{"text":", y2 = "},{"score":{"name":"y2","objective":"var"},"color":"blue"},{"text":", z2 = "},{"score":{"name":"z2","objective":"var"},"color":"green"}]
#tellraw @a ["",{"text":"m0 = "},{"score":{"name":"@s","objective":"m0"},"color":"red"},{"text":", m1 = "},{"score":{"name":"@s","objective":"m1"},"color":"blue"},{"text":", m2 = "},{"score":{"name":"@s","objective":"m2"},"color":"green"}]
