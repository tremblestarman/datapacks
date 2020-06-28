scoreboard players add distance con 1
execute if score distance con <= max_distance con if block ^ ^ ^0.1 #minecraft:air positioned ^ ^ ^0.1 run function 3mg:event_listen/raycast
execute if score distance con <= max_distance con unless block ^ ^ ^0.1 #minecraft:air positioned ^ ^ ^0.1 run function 3mg:event_listen/raycast_end
execute if score distance con > max_distance con run scoreboard players reset distance con
execute if score distance con > max_distance con run scoreboard players reset max_distance con