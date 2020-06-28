d = 64
import math, os
#import numpy as np
#import matplotlib.pyplot as plt
#from mpl_toolkits.mplot3d import Axes3D
p = []
#xs = []
#ys = []
#zs = []
for z in range(1, d+1):
    r = (1/d**1.5)*z**2.5
    rh = math.ceil(r)
    rv = math.ceil(r * 0.2)
    n = []
    for x in range(-rh, rh+1):
        m = []
        for y in range(-rv, rv+1):
            o = x**2/r**2+y**2/(r*0.2)**2
            if o <= 1 and x**2+y**2+z**2 <= d**2:
                m.append((x,y,z))
                #xs.append(x)
                #ys.append(y)
                #zs.append(z)
        if m.__len__() > 0:
            n.append((x,m))
    if n.__len__() > 0:
        p.append((z,n))
#fig = plt.figure()
#ax = Axes3D(fig)
#ax.scatter(xs, ys, zs)
#ax.set_zlabel('Z')
#ax.set_ylabel('Y')
#ax.set_xlabel('X')
#plt.show()
p = sorted(p,key=lambda x:x[0])
pn = []
for i in p:
    m = i[1]
    m = sorted(m,key=lambda x:abs(x[0]))
    m.reverse()
    for j in m:
        pn += j[1]
f = []
for i in pn:
    if i[2] >= 4:
        if i[0] >= 0:
            f.append("execute unless entity @s[tag=3mg_right_attached] positioned ^%d ^%d ^%d unless block ~ ~ ~ #3mg:unattachable run function 3mg:player/attach_test/setpos_r\r" % (i[0], i[1], i[2]))
        else:
            f.append("execute unless entity @s[tag=3mg_left_attached] positioned ^%d ^%d ^%d unless block ~ ~ ~ #3mg:unattachable run function 3mg:player/attach_test/setpos_l\r" % (i[0], i[1], i[2]))
with open('data/3mg/functions/player/attach_test/range_' + str(int(d / 8 - 1)) + ".mcfunction", "w+", encoding='utf-8') as fr:
    fr.writelines(f)