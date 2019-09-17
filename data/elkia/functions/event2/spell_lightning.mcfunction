execute as @e[tag=Boss,tag=!LightningSpell] run tag @s add LightningSpell
scoreboard players operation Lightning Events = RandomCooldown Events
execute if score Lightning Events matches 1401.. run scoreboard players set Lightning Events 1400
execute if score Lightning Events matches ..699 run scoreboard players set Lightning Events 700
execute as @e[tag=LightningSpell] at @s run summon minecraft:armor_stand ^ ^ ^15 {NoGravity:1b,Tags:["LightningTarget"],Invisible:1b}
execute as @e[tag=LightningSpell] at @s run summon minecraft:armor_stand ^ ^ ^0.2 {NoGravity:1b,Tags:["LightningBolt"],Invisible:1b}