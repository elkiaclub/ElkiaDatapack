execute as @e[tag=Chomper,tag=New] run scoreboard players set @s Events 0
execute as @e[tag=Chomper,tag=New] run tag @s remove New
scoreboard players remove @e[tag=Chomper,scores={Events=1..}] Events 1
execute as @e[tag=Chomper] at @s run execute as @p[distance=0.6..50] at @s run execute as @e[tag=Chomper,sort=nearest,limit=1] at @s run tp @s ^ ^ ^0.15 facing entity @p
execute as @e[tag=Chomper] at @s run particle dust 0.369 0.369 0.369 1 ~ ~1 ~ 0 0 0 1 0 normal
execute as @e[tag=Chomper,scores={Events=0}] at @s run execute as @p[distance=..0.7] at @s run function elkia:event2/mob_chomper_bite