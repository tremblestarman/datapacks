scoreboard objectives add var dummy
scoreboard objectives add con dummy

scoreboard players set x1 var 0
scoreboard players set y1 var 0
scoreboard players set z1 var 0
scoreboard players set x2 var 0
scoreboard players set y2 var 0
scoreboard players set z2 var 0
scoreboard players set x3 var 0
scoreboard players set y3 var 0
scoreboard players set z3 var 0

scoreboard players set g con 0
scoreboard players set f con 0
scoreboard players set p con 0
scoreboard players set 100000 con 100000
scoreboard players set 10000 con 10000
scoreboard players set 1000 con 1000
scoreboard players set 100 con 100
scoreboard players set 10 con 10
scoreboard players set 0 con 0
scoreboard players set 1 con 1
scoreboard players set 2 con 2
scoreboard players set 5 con 5
scoreboard players set neg con -1

# target
scoreboard objectives add tx dummy
scoreboard objectives add ty dummy
scoreboard objectives add tz dummy
# time
scoreboard objectives add t dummy
# motion
scoreboard objectives add m0 dummy
scoreboard objectives add m1 dummy
scoreboard objectives add m2 dummy
# origin
scoreboard objectives add ox dummy
scoreboard objectives add oy dummy
scoreboard objectives add oz dummy

scoreboard objectives add rightclick minecraft.used:minecraft.carrot_on_a_stick
team add posMark
team modify posMark color blue