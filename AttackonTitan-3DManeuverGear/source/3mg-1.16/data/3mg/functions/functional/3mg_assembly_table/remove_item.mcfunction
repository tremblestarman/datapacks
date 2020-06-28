execute store result score item_count var run data get block ~ ~ ~ Items.[{Slot:0b}].Count
scoreboard players remove item_count var 1
execute store result block ~ ~ ~ Items.[{Slot:0b}].Count byte 1 run scoreboard players get item_count var

execute store result score item_count var run data get block ~ ~ ~ Items.[{Slot:1b}].Count
scoreboard players remove item_count var 1
execute store result block ~ ~ ~ Items.[{Slot:1b}].Count byte 1 run scoreboard players get item_count var

execute store result score item_count var run data get block ~ ~ ~ Items.[{Slot:2b}].Count
scoreboard players remove item_count var 1
execute store result block ~ ~ ~ Items.[{Slot:2b}].Count byte 1 run scoreboard players get item_count var

execute store result score item_count var run data get block ~ ~ ~ Items.[{Slot:3b}].Count
scoreboard players remove item_count var 1
execute store result block ~ ~ ~ Items.[{Slot:3b}].Count byte 1 run scoreboard players get item_count var

execute store result score item_count var run data get block ~ ~ ~ Items.[{Slot:4b}].Count
scoreboard players remove item_count var 1
execute store result block ~ ~ ~ Items.[{Slot:4b}].Count byte 1 run scoreboard players get item_count var

scoreboard players reset item_count var