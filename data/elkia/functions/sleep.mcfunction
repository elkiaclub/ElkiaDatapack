execute as @a store result score @s Sleeping run data get entity @s SleepTimer
execute as @a[scores={Sleeping=1..}] run scoreboard players add @s Sleep 1
execute as @a[scores={Sleeping=0}] run scoreboard players set @s Sleep 0
execute as @r[scores={Sleep=120..}] run time add 200
execute as @r[scores={Sleep=185..}] run weather rain 1
scoreboard players add #SleepMessages Sleep 1
execute as @a[scores={Sleep=1}] run function elkia:sleep_messages
execute if score #SleepMessages Sleep > #SleepMessageLimit Sleep run scoreboard players set #SleepMessages Sleep 1