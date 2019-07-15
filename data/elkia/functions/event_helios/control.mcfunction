tp @e[type=armor_stand,tag=Event] @e[type=husk,tag=Event,limit=1]
execute store result bossbar minecraft:events value run data get entity @e[type=husk,tag=Event,limit=1] Health
execute store result score BossHealth Events run data get entity @e[type=husk,tag=Event,limit=1] Health
execute as @e[type=husk,tag=Event,limit=1] at @s run bossbar set minecraft:events players @a[distance=..100]
execute as @e[type=husk,tag=Event,limit=1] at @s run bossbar set minecraft:events visible true
execute if score BossHealth Events <= #0 Events run function elkia:event/victory
execute if score BossHealth Events <= #75 Events if entity @e[type=husk,tag=Event,limit=1,tag=!Health75] run function elkia:event/health75
execute if score BossHealth Events <= #50 Events if entity @e[type=husk,tag=Event,limit=1,tag=!Health50] run function elkia:event/health50
execute if score BossHealth Events <= #25 Events if entity @e[type=husk,tag=Event,limit=1,tag=!Health25] run function elkia:event/health25
execute as @e[type=husk,tag=Event,limit=1] at @s run particle minecraft:dripping_lava ~ ~ ~ 2 2 2 1 4 normal
scoreboard players remove AttackCooldown Events 1
execute as @e[type=husk,tag=Event,limit=1] at @s if block ~ ~ ~ minecraft:water run function elkia:event/message_nowater
execute if score AttackCooldown Events <= #0 Events run execute as @a[distance=..30] at @s run summon minecraft:small_fireball ~ ~5 ~ {direction:[0.0,-0.7,0.0]}
execute if score AttackCooldown Events <= #0 Events run execute as @a[distance=..100] at @s run playsound minecraft:entity.blaze.shoot hostile @s ~ ~ ~ 5 1 1
execute if score AttackCooldown Events <= #0 Events run scoreboard players set AttackCooldown Events 200