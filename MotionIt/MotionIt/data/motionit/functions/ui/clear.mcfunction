execute as @e[tag=entitySelected] run data merge entity @s {Glowing:0b}
tag @e[tag=entitySelected] remove entitySelected
tag @s remove motionProccessing
tag @s remove positionSelecting