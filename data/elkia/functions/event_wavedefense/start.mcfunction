kill @e[tag=WaveDefense]
kill @e[tag=Witch]
scoreboard players set Wave EventWaveDefense 0
scoreboard players set MobsAlive EventWaveDefense 0
scoreboard players set WaveCooldown EventWaveDefense 200
scoreboard players set PlayersAlive EventWaveDefense 0
setblock -10440 75 13139 minecraft:redstone_block replace
gamerule keepInventory true
spawnpoint @a[distance=..64] -10412 87 13140
summon minecraft:witch -10440 85 13140 {Invulnerable:1b,CustomNameVisible:1b,Team:"Events2",DeathLootTable:"no",PersistenceRequired:1b,Health:200f,Tags:["Witch"],CustomName:'{"text":"Hecate","color":"dark_purple","bold":true}',ActiveEffects:[{Id:1b,Amplifier:0b,Duration:180000,ShowParticles:0b},{Id:12b,Amplifier:0b,Duration:180000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:50},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.28},{Name:generic.armor,Base:10},{Name:generic.armorToughness,Base:10}]}