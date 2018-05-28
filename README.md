# ElkiaDatapack
The minecraft datapack for the Elkia server, built for use in 1.13 onwards.

Current Features:
- Endermen cannot grief.
- Dragon drops elytra, dragon egg, and dragon head.
- One player sleep
- Random sleep messages
- Every mob (except dolphins) have a head drop incorporated into loot tables
- Mob variants (red vs blue parrot) have unique heads (except tropical_fish cause like infinite variations)
- Personalised "Welcome to Elkia, <username>!" bossbar when player's first join
- Personalised "Welcome back, <username>!" when player relogs (doesn't happen first time join)
- Automatic AFK announcement + shown in player list, with [AFK] tag
- Player roles - default, veteran, donator, admin, afk - each has custom [] tag (except default)
- Relying on player roles, you can click the [] before your name to manually be set to AFK
- Player head crafting - ability to use a dropper to craft a decorative player head, such as a little 'lantern'
- Basic armour stand manipulation - using a nametag, name an armour stand "Arms" to show his arms, or "Small" to make it a baby armour stand.

Installation:
- Download this datapack and place it into your <world>/datapacks folder.
- Type /reload in game.
- Go to your world spawn, stand on the very lowest block (Y:0), and type /function elkia:elkia_setup
- To join a player role: /tag <user> add <role> - Acceptable roles: admin, donator, veteran (remove these tags for default)
