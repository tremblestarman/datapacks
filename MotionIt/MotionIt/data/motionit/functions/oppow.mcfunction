#Ignore : old method for pow recursion
execute if score p con > 0 con run scoreboard players operation f1 var *= f1 var
execute if score p con > 0 con run scoreboard players operation f1 var /= 1000 con
tellraw @p ["",{"text":"f1="},{"score":{"name":"f1","objective":"var"},"color":"green"}]
execute if score p con > 0 con run scoreboard players remove p con 1
execute if score p con > 0 con run function motionit:oppow
execute if score p con = 0 con run scoreboard players operation del var = 1000 con
execute if score p con = 0 con run scoreboard players operation del var -= f1 var
execute if score p con = 0 con run scoreboard players reset p con