execute as @e[tag=Spider] at @s run execute as @p at @s run spreadplayers ~ ~ 1 3 false @e[tag=Spider,distance=..5]
execute as @e[tag=Spider] at @s run execute as @p[distance=..2] at @s run fill ~ ~ ~ ~ ~ ~ cobweb replace air
kill @e[tag=Spider]