title @a title ["",{"text":"Victory!","color":"gold"}]
give @a[distance=..128] minecraft:player_head{display:{Name:'{"text":"Hekate\'s Cauldron","color":"dark_green","italic":false}',Lore:['{"text":"A cauldron with primordial","color":"green"}','{"text":"resurrection goop inside.","color":"green"}']},SkullOwner:{Id:"381c667e-0313-4e8b-9a55-ac3298bcdb23",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTYwNmFiMjhlZmY1ZTdiMTM5M2M1ODIyMjZjYTlkOTcyMjk0NjlhMWQ1ODUyZjcyZmQ1MWNiNTg4NzUifX19"}]}}} 1
gamerule keepInventory false
gamemode survival @a
setblock -10440 75 13139 air replace
tp @a[distance=..128] 788 67 -1599
fill 794 69 -1598 795 69 -1599 minecraft:barrier replace
bossbar set minecraft:events players