scoreboard players set OneSecCounter Counter 0
execute if entity @e[scores={quits=1}] as @a[scores={quits=1}] run tellraw @s [{"translate":"Welcome back %s!","with":[{"selector":"@s","color":"dark_aqua"}]}]
execute as @a[scores={quits=1},name=Anubis_sama] run execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~ ~ 1 1 1
scoreboard players set @a quits 0
execute if entity @a[team=] as @a[team=] run function elkia:welcome_bossbar
recipe give @a minecraft:dispenser2