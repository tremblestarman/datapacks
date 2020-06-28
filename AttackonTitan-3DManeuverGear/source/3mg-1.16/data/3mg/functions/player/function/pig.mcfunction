kill @e[tag=fly_need_kill]
execute as @e[tag=fly_need_kill] at @s run tp @s ~ 100 ~
execute as @e[tag=3mg_fly] run data modify entity @s Age set value -10000
execute as @e[tag=3mg_fly] run data modify entity @s FallDistance set value 3
effect give @e[tag=3mg_fly] minecraft:invisibility 1 1 true