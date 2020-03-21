kill @e[tag=WaveDefense]
kill @e[tag=Witch]
summon minecraft:witch -10440 85 13140 {Invulnerable:1b,CustomNameVisible:1b,Team:"Events2",DeathLootTable:"no",PersistenceRequired:1b,Health:200f,Tags:["Witch"],CustomName:'{"text":"Hecate","color":"dark_purple","bold":true}',ActiveEffects:[{Id:1b,Amplifier:0b,Duration:180000,ShowParticles:0b},{Id:12b,Amplifier:0b,Duration:180000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:50},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.28},{Name:generic.armor,Base:10},{Name:generic.armorToughness,Base:10}]}
scoreboard players remove Wave EventWaveDefense 1
scoreboard players set WaveCooldown EventWaveDefense 198
execute as @e[tag=Witch] at @s run tellraw @a[distance=0..50] [{"text":"<","color":"white"},{"text":"Hecate","color":"dark_purple"},{"text":"> ","color":"white"},{"text":"Puny players! You have failed. And you will fail again, for that's what you are.  Failures. Hahahaha *snort* hah!","color":"light_purple"}]
execute as @e[tag=Witch] at @s run spreadplayers ~ ~ 6 18 false @e[tag=Dead]
tag @e[tag=Dead] remove Dead