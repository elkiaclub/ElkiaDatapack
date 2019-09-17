execute as @e[tag=LightningBolt] at @s run tp @s ^ ^ ^0.4 facing entity @e[tag=LightningTarget,limit=1,sort=nearest]
execute as @e[tag=LightningBolt] at @s run particle minecraft:end_rod ~ ~1.5 ~ 0.15 0.15 0.15 0 10 force
execute as @e[tag=LightningBolt] at @s run particle minecraft:crit ~ ~1.5 ~ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=LightningBolt] at @s run execute as @e[tag=LightningTarget,distance=..0.5] at @s run function elkia:event2/spell_lightning_strike
execute as @e[tag=LightningBolt] at @s run execute as @r[distance=..1.2] at @s run function elkia:event2/spell_lightning_strike