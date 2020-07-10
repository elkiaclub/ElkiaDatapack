scoreboard players set FiveSecCounter Counter 0
function elkia:afk_movecheck
execute as @a[scores={dontsleep=1..}] run function elkia:sleep_warning
execute as @a[scores={dontSleepCD=1..}] run scoreboard players remove @s dontSleepCD 1
execute as @e[name=Silent,tag=!Silent] run data merge entity @s {Silent:1b}
execute as @e[name=Silent,tag=!Silent] run tag @s add Silent