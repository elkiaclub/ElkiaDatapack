execute as @e[tag=Boss,tag=!MeteorSpell] run tag @s add MeteorSpell
execute as @a[distance=..20] at @s run summon minecraft:silverfish ~ ~10 ~ {Silent:1b,Motion:[0.0,-0.3,0.0],Tags:["Meteor"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1200,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:1200,ShowParticles:0b}]}
scoreboard players operation Meteor Events = RandomCooldown Events
execute if score Meteor Events matches 1201.. run scoreboard players set Meteor Events 1200
execute if score Meteor Events matches ..599 run scoreboard players set Meteor Events 600