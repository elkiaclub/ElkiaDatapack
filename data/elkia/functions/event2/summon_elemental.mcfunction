summon minecraft:armor_stand ~ ~2 ~ {Invisible:1b,Invulnerable:1b,Tags:["Event"]}
summon minecraft:zombie ~ ~2 ~ {CustomNameVisible:1b,CanPickUpLoot:0b,Health:100f,Tags:["Boss"],CustomName:"{\"text\":\"Elemental\",\"color\":\"green\",\"bold\":true,\"italic\":true}",HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:"{\"text\":\"Elemental Staff\",\"color\":\"light_purple\",\"italic\":false}",Lore:["{\"text\":\"Imbued with the power\"}","{\"text\":\"of the elements...\"}"]},HideFlags:37,Unbreakable:1b,CustomModelData:10000034,Enchantments:[{id:"minecraft:sharpness",lvl:15s},{id:"minecraft:knockback",lvl:1s},{id:"minecraft:fire_aspect",lvl:1s},{id:"minecraft:sweeping",lvl:3s}]}},{}],HandDropChances:[-327.67F,0.85F],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{display:{Name:"{\"text\":\"Wizard\"}"},Unbreakable:1b}},{id:"minecraft:diamond_leggings",Count:1b,tag:{display:{Name:"{\"text\":\"Invis\"}"},Unbreakable:1b}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{display:{Name:"{\"text\":\"Wizard\"}"},Unbreakable:1b}},{id:"minecraft:diamond_helmet",Count:1b,tag:{display:{Name:"{\"text\":\"Wizard\"}"},Unbreakable:1b}}],ArmorDropChances:[-327.67F,-327.67F,-327.67F,-327.67F],Attributes:[{Name:generic.maxHealth,Base:100},{Name:generic.followRange,Base:64},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.33},{Name:generic.armor,Base:30},{Name:generic.armorToughness,Base:30}]}
setblock ~ ~2 ~ air
bossbar set minecraft:events visible true
scoreboard players set Shockwave Events 400
scoreboard players set IceSpell Events 300
scoreboard players set Meteor Events 1200
scoreboard players set Lightning Events 1400
scoreboard players set SpiderBomb Events 900
scoreboard players set PlayerSwap Events 2300