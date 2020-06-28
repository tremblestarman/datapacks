c = []
for i in range(0, 41):
    t = i*200
    if i == 40:
        c.append("execute if score @s playerGas matches "+str(t)+" run data modify entity @e[tag=3mg_show_gas,limit=1,distance=..0.01] Item.tag.display.Lore append value \"§8|\"")
        c.append("execute if score @s playerGas matches .."+str(t-1)+" run data modify entity @e[tag=3mg_show_gas,limit=1,distance=..0.01] Item.tag.display.Lore append value \"§0|\"")
    else:
        c.append("execute if score @s playerGas matches "+str(t+1)+".. run data modify entity @e[tag=3mg_show_gas,limit=1,distance=..0.01] Item.tag.display.Lore append value \"§8|\"")
        c.append("execute if score @s playerGas matches .."+str(t)+" run data modify entity @e[tag=3mg_show_gas,limit=1,distance=..0.01] Item.tag.display.Lore append value \"§0|\"")
m = reversed(c)
for i in m:
    print(i)
for i in range(0, 41):
    t = i*200
    if i == 40:
        print("execute if score @s playerAir matches "+str(t)+" run data modify entity @e[tag=3mg_show_air,limit=1,distance=..0.01] Item.tag.display.Lore append value \"§f|\"")
        print("execute if score @s playerAir matches .."+str(t-1)+" run data modify entity @e[tag=3mg_show_air,limit=1,distance=..0.01] Item.tag.display.Lore append value \"§0|\"")
    else:
        print("execute if score @s playerAir matches "+str(t+1)+".. run data modify entity @e[tag=3mg_show_air,limit=1,distance=..0.01] Item.tag.display.Lore append value \"§f|\"")
        print("execute if score @s playerAir matches .."+str(t)+" run data modify entity @e[tag=3mg_show_air,limit=1,distance=..0.01] Item.tag.display.Lore append value \"§0|\"")