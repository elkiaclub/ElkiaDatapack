setblock 799 64 -1582 minecraft:stone_button[face=floor] replace
bossbar set minecraft:events visible false
execute as @a[distance=..100] at @s run playsound minecraft:entity.blaze.death hostile @s ~ ~ ~ 10000 0.5 1
execute as @e[type=armor_stand,tag=Event,limit=1] at @s run tellraw @a[distance=..100] ["",{"text":"<"},{"text":"Helios","color":"gold"},{"text":"> NO! I WILL HAVE MY REVENGE!"}]
execute as @e[type=armor_stand,tag=Event,limit=1] at @s run give @a[distance=..100] minecraft:player_head{display:{Name:"{\"text\":\"Deus Orb\",\"color\":\"gold\",\"italic\":false}",Lore:["{\"text\":\"Imbued with the soul of Helios.\",\"color\":\"yellow\",\"italic\":false}"]},SkullOwner:{Id:"13556f68-634d-4b3f-8e73-8a0ecdee3330",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjg5MDQyMDgyYmI3YTc2MThiNzg0ZWU3NjA1YTEzNGM1ODgzNGUyMWUzNzRjODg4OTM3MTYxMDU3ZjZjNyJ9fX0="}]}}} 1
execute as @e[type=armor_stand,tag=Event,limit=1] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1 50 force
kill @e[tag=Event]
setblock 804 0 -1605 minecraft:air replace