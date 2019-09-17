effect give @s minecraft:blindness 8 2 true
effect give @s minecraft:slowness 5 1 true
tag @e[tag=IceBolt,tag=!Hit,distance=..2] add Hit
execute as @e[tag=IceBolt,tag=Hit,distance=..2] at @s run particle minecraft:item_snowball ~ ~ ~ 0.2 0.2 0.2 1 10 force
playsound minecraft:block.glass.break block @s ~ ~ ~ 1 1.5 1
tp @e[tag=IceBolt,tag=Hit] ~ -63 ~ 