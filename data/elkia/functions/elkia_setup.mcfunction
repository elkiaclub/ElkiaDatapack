team add AFK
team option AFK color dark_gray
team option AFK seeFriendlyInvisibles false
team option AFK prefix ["",{"text":"[AFK]","color":"gray"}]
team add players
team option players color dark_aqua
team option players seeFriendlyInvisibles false
team add veterans
team option veterans color dark_aqua
team option veterans seeFriendlyInvisibles false
team option veterans prefix {"text":"[V]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to go AFK!"},"clickEvent":{"action":"run_command","value":"/trigger AFK_NotMoving set 11999"}}
team add donators
team option donators color dark_aqua
team option donators seeFriendlyInvisibles false
team option donators prefix {"text":"[D]","color":"light_purple","hoverEvent":{"action":"show_text","value":"Click to go AFK!"},"clickEvent":{"action":"run_command","value":"/trigger AFK_NotMoving set 11999"}}
team add admins
team option admins color dark_aqua
team option admins seeFriendlyInvisibles false
team option admins prefix {"text":"[A]","color":"green","hoverEvent":{"action":"show_text","value":"Click to go AFK!"},"clickEvent":{"action":"run_command","value":"/trigger AFK_NotMoving set 11999"}}
scoreboard objectives add HoarderCount dummy
scoreboard objectives add HoarderHeadCount dummy
scoreboard objectives add AFK_DisSwum minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add AFK_DisDove minecraft.custom:minecraft.dive_one_cm
scoreboard objectives add AFK_DisWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add AFK_DisCrouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add AFK_DisPig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add AFK_DisHorse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add AFK_DisFlown minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add AFK_DisBoat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add AFK_DisElytra minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add AFK_DisCart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add AFK_DisSprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add AFK_NotMoving dummy
scoreboard objectives add headDeath minecraft.custom:minecraft.deaths
scoreboard objectives add headKill minecraft.custom:minecraft.player_kills
scoreboard objectives add WelcomeTimer dummy
scoreboard objectives add Health health
scoreboard objectives setdisplay belowName Health
scoreboard objectives add Deaths deathCount
scoreboard objectives setdisplay list Deaths
scoreboard objectives add quits minecraft.custom:minecraft.leave_game
scoreboard objectives add Sleep dummy
function elkia:trialsofcao_setup
bossbar add welcome "Welcome"
bossbar set minecraft:welcome value 100
bossbar set minecraft:welcome color blue
gamerule commandBlockOutput false
setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"elkia:elkiacommandblockroom",rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~ ~ minecraft:redstone_block