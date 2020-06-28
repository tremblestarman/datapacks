scoreboard players add distance con 1
particle minecraft:underwater ~ ~ ~ 0 0 0 2 1
execute if score distance con matches ..512 if block ^ ^ ^0.125 #minecraft:air positioned ^ ^ ^0.125 run function 3mg:player/physic/raycast_test
#execute if score distance con matches ..160 unless block ^ ^ ^0.5 #minecraft:air positioned ^ ^ ^0.1 run function 3mg:event_listen/raycast_end
execute if score distance con matches ..512 unless block ^ ^ ^0.125 #minecraft:air positioned ^ ^ ^0.125 run scoreboard players reset distance con
execute if score distance con matches 513.. run scoreboard players reset distance con