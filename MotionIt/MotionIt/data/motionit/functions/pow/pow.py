import sys
import math

f = 0.01
m = 0
ml = 0
tl = 0

for t in range(1000):
    m = int((1-pow((1-f),t))*10000)
    if m != ml or t == 999:
        if tl == t - 1 : print("execute as @s[scores={t=%s}] run scoreboard players set p con %s" %(tl, ml))
        else : print("execute as @s[scores={t=%s..%s}] run scoreboard players set p con %s" %(tl, t, ml))
        ml = m
        tl = t