execute as @s[scores={dontSleepCD=1..}] run tellraw @s [{"text":"Error:","color":"red"},{"text":" There is a 5-minute cooldown on this command. Please wait before using it again.","color":"yellow"}]
execute as @s[scores={dontSleepCD=..0}] run title @a title [{"text":"Do not sleep!","color":"dark_red"}]
execute as @s[scores={dontSleepCD=..0}] run title @a subtitle [{"selector":"@s","color":"gold"},{"text":" needs the night.","color":"yellow"}]
scoreboard players set @s[scores={dontSleepCD=..0}] dontSleepCD 60
scoreboard players set @s dontsleep 0
scoreboard players enable @s dontsleep