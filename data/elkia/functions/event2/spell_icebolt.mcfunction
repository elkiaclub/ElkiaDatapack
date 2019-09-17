execute as @e[tag=IceBolt] run scoreboard players add @s Events 1
execute as @e[tag=IceBolt,scores={Events=140..}] at @s run tp @s ~ -63 ~
execute as @e[tag=IceBolt] at @s run particle dust 0.098 1.000 0.941 2 ~ ~0.8 ~ 0 0 0 1 0 normal
execute as @e[tag=IceBolt] at @s run particle end_rod ~ ~0.9 ~ 0 0 0 1 0 normal
execute as @e[tag=IceBolt,tag=!Hit] at @s run execute as @a[distance=..0.7] at @s run function elkia:event2/spell_icebolt_hit