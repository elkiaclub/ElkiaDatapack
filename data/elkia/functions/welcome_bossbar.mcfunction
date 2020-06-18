bossbar set minecraft:welcome name ["",{"text":"Welcome, ","color":"aqua"},{"selector":"@s","color":"dark_aqua"},{"text":"!","color":"aqua"}]
tag @a[team=] add Welcome
bossbar set minecraft:welcome players @a
bossbar set minecraft:welcome visible true
execute if entity @e[team=,tag=Welcome] as @a[team=,tag=Welcome] run scoreboard players add @s WelcomeTimer 20
execute if entity @e[team=,scores={WelcomeTimer=300..}] run bossbar set minecraft:welcome visible false
team join players @a[team=,scores={WelcomeTimer=300..}]
recipe give @a[team=] *