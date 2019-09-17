scoreboard players operation SpiderBomb Events = RandomCooldown Events
execute if score SpiderBomb Events matches 901.. run scoreboard players set SpiderBomb Events 900
execute if score SpiderBomb Events matches ..599 run scoreboard players set SpiderBomb Events 600
execute as @e[tag=Boss,tag=!SpiderBomb] run tag @s add SpiderBomb
execute as @e[tag=SpiderBomb] at @s run execute as @a[distance=..20] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Spider"],Invulnerable:1b,Invisible:1b}
execute as @e[tag=SpiderBomb] at @s run summon minecraft:cave_spider ~ ~ ~ {Health:35f,Tags:["SpiderMob"],CustomName:"{\"text\":\"Mutated Spider\",\"color\":\"green\"}",HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:10s}]}},{}],HandDropChances:[-327.67F,0.85F],ActiveEffects:[{Id:1b,Amplifier:1b,Duration:6000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:25}]}
schedule function elkia:event2/spell_spiderbomb_hit 2t