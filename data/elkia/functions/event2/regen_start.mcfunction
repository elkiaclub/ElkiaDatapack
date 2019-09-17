execute as @e[tag=Boss,tag=!Regen] run tag @s add Regen
execute if score BossHealth Events matches 35..67 as @e[tag=Boss,tag=!Health66] run tag @s add Health66
execute if score BossHealth Events matches ..34 as @e[tag=Boss,tag=!Health33] run tag @s add Health33
data merge entity @e[tag=Boss,limit=1] {Invulnerable:1b,NoAI:1b,NoGravity:1b}
tp @e[tag=Boss] 836 70 -1654
execute as @e[tag=Boss,tag=!Reinforced] at @s run function elkia:event2/mob_reinforcements
setblock 836 64 -1666 minecraft:obsidian
summon minecraft:end_crystal 836 64 -1666 {ShowBottom:0b,Tags:["RegenCrystal"],BeamTarget:{X:836,Y:69,Z:-1654}}
setblock 848 64 -1654 minecraft:obsidian
summon minecraft:end_crystal 848 64 -1654 {ShowBottom:0b,Tags:["RegenCrystal"],BeamTarget:{X:836,Y:69,Z:-1654}}
setblock 836 64 -1642 minecraft:obsidian
summon minecraft:end_crystal 836 64 -1642 {ShowBottom:0b,Tags:["RegenCrystal"],BeamTarget:{X:836,Y:69,Z:-1654}}
setblock 828 64 -1654 minecraft:obsidian
summon minecraft:end_crystal 828 64 -1654 {ShowBottom:0b,Tags:["RegenCrystal"],BeamTarget:{X:836,Y:69,Z:-1654}}