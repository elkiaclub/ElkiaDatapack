execute as @a[scores={headKill=1..,PVPKills=20..}] run advancement grant @s only elkia:elkia/theoneandonly
execute as @a[scores={headDeath=1..}] at @s run advancement grant @a[scores={headKill=0,headDeath=0},distance=..15] only elkia:elkia/itwasntme
execute as @a[scores={headKill=1..}] run scoreboard players set @a headKill 0
execute as @a[scores={headDeath=1..}] run scoreboard players set @a headDeath 0