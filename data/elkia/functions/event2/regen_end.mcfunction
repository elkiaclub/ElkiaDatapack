execute as @e[tag=Boss,tag=Regen] at @s run spreadplayers ~ ~ 1 1 false @s
execute as @e[tag=Boss,tag=Regen] at @s run tag @s remove Regen
execute as @e[tag=Boss,tag=Reinforced] at @s run tag @s remove Reinforced
scoreboard players set RegenCooldown Events 160
data merge entity @e[tag=Boss,limit=1] {Invulnerable:0b,NoGravity:0b,NoAI:0b}
setblock 836 64 -1666 minecraft:air
setblock 848 64 -1654 minecraft:air
setblock 836 64 -1642 minecraft:air
setblock 828 64 -1654 minecraft:air