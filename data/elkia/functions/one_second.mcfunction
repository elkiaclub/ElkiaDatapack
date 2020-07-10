scoreboard players set OneSecCounter Counter 0
execute if entity @e[scores={quits=1}] as @a[scores={quits=1}] run tellraw @s [{"translate":"Welcome back %s!","with":[{"selector":"@s","color":"gold"}]}]
scoreboard players set @a quits 0
execute if entity @a[team=] as @a[team=] run function elkia:welcome_bossbar