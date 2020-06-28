# MotionIt
A Vanilla Datapack Calculating Motions of Entities.
( *still in development* )
****
### Initialization
```mcfunction
#   set target position (0.500, 8.000, 6.500)
#       the value is rounded to three decimal places.
scoreboard players set @s tx 500
scoreboard players set @s ty 8000
scoreboard players set @s tz 6500
#   set time (ticks)
scoreboard players set @s t 40
```
### Calculation
```mcfunction
execute as @x run function motionit:calculate
```
Using the values you set along with @x's location to calculate its motion. 
### Go
```mcfunction
execute as @x run function motionit:go
```
Go to its destination in specific ticks you set after calculation.
****
### UI
```mcfunction
function motionit:ui/reset
```
Use EntitySelector you got (right click) to select entity to be motioned.
****
## Thanks
Thanks **Bio-Hazard** for this article:
["A Set of Formulas for Entities' Motion Calculation"](https://www.bilibili.com/read/cv1342860)