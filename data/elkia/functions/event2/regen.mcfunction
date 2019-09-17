scoreboard players set CrystalsAlive Events 0
execute as @e[type=end_crystal] run scoreboard players add CrystalsAlive Events 1
execute if score CrystalsAlive Events matches 1..4 as @e[tag=Boss] run execute if score RegenCooldown Events matches 1..1000 run scoreboard players remove RegenCooldown Events 1
execute if score RegenCooldown Events matches 0 as @e[tag=Boss] run effect give @s minecraft:instant_damage 1 1 true
execute if score RegenCooldown Events matches 0 as @e[tag=Boss] run scoreboard players set RegenCooldown Events 160
execute if score CrystalsAlive Events matches 0 run function elkia:event2/regen_end