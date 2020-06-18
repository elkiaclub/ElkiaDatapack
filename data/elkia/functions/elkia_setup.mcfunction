scoreboard objectives add Counter dummy
scoreboard players set FiveSecs Counter 100
scoreboard players set OneSec Counter 20
team add AFK
team modify AFK color dark_gray
team modify AFK seeFriendlyInvisibles false
team modify AFK prefix ["",{"text":"[AFK]","color":"gray"}]
team add players
team modify players seeFriendlyInvisibles false
team add admins
team modify admins seeFriendlyInvisibles false
team modify admins prefix {"text":"[A]","color":"green","hoverEvent":{"action":"show_text","value":"Click to go AFK!"},"clickEvent":{"action":"run_command","value":"/trigger AFK_NotMoving set 11999"}}
scoreboard objectives add AFK_DisSwum minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add AFK_DisWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add AFK_DisCrouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add AFK_DisPig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add AFK_DisHorse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add AFK_DisFlown minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add AFK_DisBoat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add AFK_DisElytra minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add AFK_DisCart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add AFK_DisSprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add AFK_NotMoving trigger
scoreboard objectives add WelcomeTimer dummy
scoreboard objectives add HoarderCount dummy
scoreboard objectives add HeadCount dummy
scoreboard objectives add Health health
scoreboard objectives setdisplay belowName Health
scoreboard objectives add Deaths deathCount
scoreboard objectives setdisplay list Deaths
scoreboard objectives add quits minecraft.custom:minecraft.leave_game
scoreboard objectives add Sleep dummy
scoreboard objectives add Sleeping dummy
scoreboard objectives add headDeath minecraft.custom:minecraft.deaths
scoreboard objectives add headKill minecraft.custom:minecraft.player_kills
scoreboard players set #SleepMessageLimit Sleep 43
bossbar add welcome "Welcome"
bossbar set minecraft:welcome value 100
bossbar set minecraft:welcome color blue
gamerule commandBlockOutput false
gamerule doFireTick false
tellraw @a[team=admins] ["",{"text":"Elkia S5 Datapack V3.0-beta","color":"yellow"},{"text":" loaded successfully.","color":"dark_green"}]