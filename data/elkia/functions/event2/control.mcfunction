execute store result bossbar minecraft:events value run data get entity @e[tag=Boss,limit=1] Health
execute store result score BossHealth Events run data get entity @e[tag=Boss,limit=1] Health
execute as @e[tag=Boss] at @s run bossbar set minecraft:events players @a[distance=..50]
execute as @e[type=armor_stand,tag=Event] at @s run tp @e[type=item,distance=..40] 819.5 67 -1626.5
scoreboard players set PlayersAlive Events 0
execute as @a[distance=..100] run scoreboard players add PlayersAlive Events 1
execute as @e[tag=Boss] run scoreboard players add RandomCooldown Events 1
execute if score RandomCooldown Events matches 2400.. run scoreboard players set RandomCooldown Events 0
execute if score Shockwave Events matches 1.. run scoreboard players remove Shockwave Events 1
execute if score Shockwave Events matches 0 as @e[tag=Boss,tag=!Shockwave] at @s run execute as @p[distance=..2] run function elkia:event2/spell_shockwave
execute if score Shockwave Events matches 0 as @e[tag=Boss,tag=!Shockwave] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.2 0.2 0 5 force
execute if score IceSpell Events matches 1.. run scoreboard players remove IceSpell Events 1
execute if score IceSpell Events matches 0 as @e[tag=Boss,tag=!IceSpell] at @s run function elkia:event2/spell_icebolt_summon
execute if entity @e[tag=IceBolt] as @e[tag=Boss] at @s run function elkia:event2/spell_icebolt
execute if score IceSpell Events matches 0 as @e[tag=Boss,tag=IceSpell] at @s run tag @s remove IceSpell
execute if score Meteor Events matches 1.. run scoreboard players remove Meteor Events 1
execute if score Meteor Events matches 0 as @e[tag=Boss,tag=!MeteorSpell] at @s run function elkia:event2/spell_meteor_summon
execute as @e[tag=Meteor] at @s run function elkia:event2/spell_meteor
execute if score Meteor Events matches 0 as @e[tag=Boss,tag=MeteorSpell] run tag @s remove MeteorSpell
execute if score Lightning Events matches 1.. run scoreboard players remove Lightning Events 1
execute if score Lightning Events matches 0 as @e[tag=Boss,tag=!LightningSpell] at @s run function elkia:event2/spell_lightning
execute as @e[tag=LightningBolt] at @s run function elkia:event2/spell_lightning_movement
execute if score Lightning Events matches 0 as @e[tag=Boss,tag=LightningSpell] run tag @s remove LightningSpell
scoreboard players set ChompersAlive Events 0
execute as @e[tag=Chomper] run scoreboard players add ChompersAlive Events 1
execute if score PlayersAlive Events > ChompersAlive Events run execute if score ChomperTimer Events matches 0 as @e[tag=Boss] at @s run function elkia:event2/mob_chomper_summon
execute if score ChomperTimer Events matches 1.. run scoreboard players remove ChomperTimer Events 1
execute as @e[tag=Boss] run function elkia:event2/mob_chomper
execute if score SpiderBomb Events matches 1.. run scoreboard players remove SpiderBomb Events 1
execute if score SpiderBomb Events matches 0 as @e[tag=Boss,tag=!SpiderBomb] at @s run function elkia:event2/spell_spiderbomb
execute if score SpiderBomb Events matches 0 as @e[tag=Boss,tag=SpiderBomb] run tag @s remove SpiderBomb
execute if score PlayerSwap Events matches 1.. run scoreboard players remove PlayerSwap Events 1
execute if score PlayerSwap Events matches 0 as @e[tag=Boss,tag=!PlayerSwap] at @s run function elkia:event2/spell_playerswap
execute if score PlayerSwap Events matches 0 as @e[tag=Boss,tag=PlayerSwap] run tag @s remove PlayerSwap
execute if score BossHealth Events matches 35..67 as @e[tag=Boss,tag=!Health66] at @s run function elkia:event2/regen_start
execute if score BossHealth Events matches ..34 as @e[tag=Boss,tag=!Health33] at @s run function elkia:event2/regen_start
execute as @e[tag=Boss,tag=Regen] at @s run function elkia:event2/regen
execute as @e[tag=Event] at @s run execute if block ~ ~ ~ minecraft:water run tp @e[tag=Event] 836 64 -1654
execute as @e[tag=Boss] at @s run execute if block ~ ~ ~ minecraft:water run tp @e[tag=Boss] 836 64 -1654
execute if score BossHealth Events matches 0 as @e[tag=Event,type=armor_stand] at @s run function elkia:event2/victory