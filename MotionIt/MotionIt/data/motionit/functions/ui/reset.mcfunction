function motionit:ui/clear
tag @e remove entitySelected
scoreboard players reset @s rightclick
# item
clear @s minecraft:carrot_on_a_stick{entityselector:1b}
give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Entity Selector\",\"color\":\"yellow\"}"},Unbreakable:1b,entityselector:1b,HideFlags:63}