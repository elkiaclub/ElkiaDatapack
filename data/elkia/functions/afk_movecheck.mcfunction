scoreboard players add @a[team=!AFK,gamemode=!spectator] AFK_NotMoving 100
execute as @a[scores={AFK_DisSwum=1..}] run scoreboard players set @s AFK_NotMoving 0
execute as @a[scores={AFK_DisWalk=1..}] run scoreboard players set @s AFK_NotMoving 0
execute as @a[scores={AFK_DisCrouch=1..}] run scoreboard players set @s AFK_NotMoving 0
execute as @a[scores={AFK_DisElytra=1..}] run scoreboard players set @s AFK_NotMoving 0
execute as @a[scores={AFK_DisPig=1..}] run scoreboard players set @s AFK_NotMoving 0
execute as @a[scores={AFK_DisHorse=1..}] run scoreboard players set @s AFK_NotMoving 0
execute as @a[scores={AFK_DisFlown=1..}] run scoreboard players set @s AFK_NotMoving 0
execute as @a[scores={AFK_DisBoat=1..}] run scoreboard players set @s AFK_NotMoving 0
execute as @a[scores={AFK_DisCart=1..}] run scoreboard players set @s AFK_NotMoving 0
execute as @a[scores={AFK_DisSprint=1..}] run scoreboard players set @s AFK_NotMoving 0
function elkia:afk_movereset
team join AFK @a[scores={AFK_NotMoving=12000..}]
execute as @a[scores={AFK_NotMoving=12000..},tag=!AFK] run tellraw @a [{"selector":"@s"},{"text":" is now away from their keyboard.","color":"white"}]
tag @a[tag=!AFK,team=AFK] add AFK
execute if entity @a[scores={AFK_NotMoving=0},team=AFK] as @a[scores={AFK_NotMoving=0},team=AFK] run function elkia:team_join
execute as @a[team=!AFK,tag=AFK] run tellraw @a [{"selector":"@s"},{"text":" is now back at their keyboard.","color":"white"}]
tag @a[tag=AFK,team=!AFK] remove AFK
scoreboard players enable @a AFK_NotMoving
scoreboard players set AFKCounter AFKCounter 0