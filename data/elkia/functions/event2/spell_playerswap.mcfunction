scoreboard players operation Meteor Events = RandomCooldown Events
execute if score PlayerSwap Events matches 2301.. run scoreboard players set PlayerSwap Events 2300
execute if score PlayerSwap Events matches ..1999 run scoreboard players set PlayerSwap Events 2000
execute as @e[tag=PlayerSwap] at @s run execute as @a[distance=..40] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Swapper"],Invisible:1b}
execute as @e[tag=PlayerSwap] at @s run execute as @a[distance=..40] at @s run tp @e[tag=Swapper,limit=1,sort=nearest] ^ ^ ^-0.1 facing entity @s
execute as @e[tag=PlayerSwap] at @s run execute as @a[distance=..40] at @s run tp @s @e[tag=Swapper,sort=random,limit=1]
kill @e[tag=Swapper]