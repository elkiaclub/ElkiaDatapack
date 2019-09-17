execute as @e[tag=Boss,tag=!IceSpell] at @s run summon minecraft:silverfish ~ ~ ~ {Silent:1b,CustomNameVisible:0b,Tags:["IceBolt"],CustomName:"{\"text\":\"Ice Bolt\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:30s}]}},{}],HandDropChances:[-327.67F,0.85F],ActiveEffects:[{Id:5b,Amplifier:2b,Duration:1200,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:1200,ShowParticles:0b}],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.4}]}
execute as @e[tag=Boss,tag=!IceSpell] at @s run tag @s add IceSpell
scoreboard players operation IceSpell Events = RandomCooldown Events
execute if score IceSpell Events matches 301.. run scoreboard players set IceSpell Events 300
execute if score IceSpell Events matches ..99 run scoreboard players set IceSpell Events 100