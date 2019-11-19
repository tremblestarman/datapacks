execute as @e[tag=fly_need_kill] at @s run tp @s ~ -100 ~
kill @e[tag=fly_need_kill]
execute as @e[tag=smd_fly] run data modify entity @s Age set value -10000
effect give @e[tag=smd_fly] minecraft:invisibility 1 1 true