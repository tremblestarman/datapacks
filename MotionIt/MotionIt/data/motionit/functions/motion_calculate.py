import sys
import math

o = (0.5,4,-3.5)
p = (0.5,8,6.5)
g = -0.02
f = 0.08
t = 20

dx = p[0] - o[0]
dy = p[1] - o[1]
dz = p[2] - o[2]

x = f * dx / (1 - math.pow(1 - f, t))
y = (f * dy - g * t) / (1 - math.pow(1 - f, t)) + g / f - g
z = f * dz / (1 - math.pow(1 - f, t))

print ("{Motion:[", x, ",", y, ",", z, "]}")