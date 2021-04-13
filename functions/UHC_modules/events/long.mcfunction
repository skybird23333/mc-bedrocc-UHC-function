tellraw @a[tag=eventLister,tag=host] {"rawtext":[{"text":"long is run"}]}
#pvp disallow tiem
execute @s[tag=host,scores={settings_state=2,timer=31800}] ~~~ tellraw @a {"rawtext":[{"text":"§ePVP will be turned on in §c2§e minutes!"}]}
execute @s[tag=host,scores={settings_state=2,timer=31200}] ~~~ tellraw @a {"rawtext":[{"text":"§ePVP will be turned on in §c1§e minute!"}]}
execute @s[tag=host,scores={settings_state=2,timer=30600}] ~~~ tellraw @a {"rawtext":[{"text":"§ePVP has been turned on."}]}
execute @s[tag=host,scores={settings_state=2,timer=30600}] ~~~ gamerule pvp true
#heal
execute @s[tag=host,scores={settings_state=2,settings_healing=1,timer=2400}] ~~~ effect @a instant_health 1 255 true
execute @s[tag=host,scores={settings_state=2,settings_healing=1,timer=2400}] ~~~ tellraw @a {"rawtext":[{"text":"§aEveryone has been healed!\n§cThis is the final heal of this game."}]}


#scoreboard time display
#time till deathmatch
execute @s[tag=host,scores={settings_state=2,timer=35950}] ~~~ scoreboard players set "§f " display -1
execute @s[tag=host,scores={settings_state=2,timer=35950}] ~~~ scoreboard players set "§r " display -5
execute @s[tag=host,scores={settings_state=2,timer=35950}] ~~~ scoreboard players set "§1 " display -7
execute @s[tag=host,scores={settings_state=2,timer=35950}] ~~~ scoreboard players set "UHC Classic" display -8
execute @s[tag=host,scores={settings_state=2,timer=30600}] ~~~ scoreboard players set "DeathMatch in" display -2

execute @s[tag=host,scores={settings_state=2,timer=30600}] ~~~ scoreboard players set "§a50 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=30000}] ~~~ scoreboard players reset "§a50 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=30000}] ~~~ scoreboard players set "§a49 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=29400}] ~~~ scoreboard players reset "§a49 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=29400}] ~~~ scoreboard players set "§a48 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=28800}] ~~~ scoreboard players reset "§a48 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=28800}] ~~~ scoreboard players set "§a47 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=28200}] ~~~ scoreboard players reset "§a47 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=28200}] ~~~ scoreboard players set "§a46 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=27600}] ~~~ scoreboard players reset "§a46 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=27600}] ~~~ scoreboard players set "§a45 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=27000}] ~~~ scoreboard players reset "§a45 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=27000}] ~~~ scoreboard players set "§a44 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=26400}] ~~~ scoreboard players reset "§a44 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=26400}] ~~~ scoreboard players set "§a43 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=25800}] ~~~ scoreboard players reset "§a43 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=25800}] ~~~ scoreboard players set "§a42 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=25200}] ~~~ scoreboard players reset "§a42 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=25200}] ~~~ scoreboard players set "§a41 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=24600}] ~~~ scoreboard players reset "§a41 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=24600}] ~~~ scoreboard players set "§a40 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=24000}] ~~~ scoreboard players reset "§a40 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=24000}] ~~~ scoreboard players set "§a39 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=23400}] ~~~ scoreboard players reset "§a39 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=23400}] ~~~ scoreboard players set "§a38 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=22800}] ~~~ scoreboard players reset "§a38 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=22800}] ~~~ scoreboard players set "§a37 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=22200}] ~~~ scoreboard players reset "§a37 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=22200}] ~~~ scoreboard players set "§a36 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=21600}] ~~~ scoreboard players reset "§a36 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=21600}] ~~~ scoreboard players set "§a35 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=21000}] ~~~ scoreboard players reset "§a35 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=21000}] ~~~ scoreboard players set "§a34 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=20400}] ~~~ scoreboard players reset "§a34 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=20400}] ~~~ scoreboard players set "§a33 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=19800}] ~~~ scoreboard players reset "§a33 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=19800}] ~~~ scoreboard players set "§a32 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=19200}] ~~~ scoreboard players reset "§a32 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=19200}] ~~~ scoreboard players set "§a31 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=18600}] ~~~ scoreboard players reset "§a31 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=18600}] ~~~ scoreboard players set "§a30 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=18000}] ~~~ scoreboard players reset "§a30 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=18000}] ~~~ scoreboard players set "§a29 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=17400}] ~~~ scoreboard players reset "§a29 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=17400}] ~~~ scoreboard players set "§a28 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=16800}] ~~~ scoreboard players reset "§a28 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=16800}] ~~~ scoreboard players set "§a27 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=16200}] ~~~ scoreboard players reset "§a27 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=16200}] ~~~ scoreboard players set "§a26 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=15600}] ~~~ scoreboard players reset "§a26 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=15600}] ~~~ scoreboard players set "§a25 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=15000}] ~~~ scoreboard players reset "§a25 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=15000}] ~~~ scoreboard players set "§a24 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=14400}] ~~~ scoreboard players reset "§a24 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=14400}] ~~~ scoreboard players set "§a23 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=13800}] ~~~ scoreboard players reset "§a23 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=13800}] ~~~ scoreboard players set "§a22 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=13200}] ~~~ scoreboard players reset "§a22 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=13200}] ~~~ scoreboard players set "§a21 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=12600}] ~~~ scoreboard players reset "§a21 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=12600}] ~~~ scoreboard players set "§a20 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=12000}] ~~~ scoreboard players reset "§a20 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=12000}] ~~~ scoreboard players set "§a19 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=11400}] ~~~ scoreboard players reset "§a19 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=11400}] ~~~ scoreboard players set "§a18 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ scoreboard players reset "§a18 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ scoreboard players set "§a17 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players reset "§a17 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players set "§a16 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=9600}] ~~~ scoreboard players reset "§a16 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=9600}] ~~~ scoreboard players set "§a15 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=9000}] ~~~ scoreboard players reset "§a15 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=9000}] ~~~ scoreboard players set "§a14 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=8400}] ~~~ scoreboard players reset "§a14 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=8400}] ~~~ scoreboard players set "§a13 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=7800}] ~~~ scoreboard players reset "§a13 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=7800}] ~~~ scoreboard players set "§a12 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=7200}] ~~~ scoreboard players reset "§a12 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=7200}] ~~~ scoreboard players set "§a11 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=6600}] ~~~ scoreboard players reset "§a11 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=6600}] ~~~ scoreboard players set "§a10 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=6000}] ~~~ scoreboard players reset "§a10 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=6000}] ~~~ scoreboard players set "§a9 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=5400}] ~~~ scoreboard players reset "§a9 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=5400}] ~~~ scoreboard players set "§a8 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=4800}] ~~~ scoreboard players reset "§a8 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=4800}] ~~~ scoreboard players set "§a7 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=4200}] ~~~ scoreboard players reset "§a7 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=4200}] ~~~ scoreboard players set "§a6 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=3600}] ~~~ scoreboard players reset "§a6 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=3600}] ~~~ scoreboard players set "§a5 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=3000}] ~~~ scoreboard players reset "§a5 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=3000}] ~~~ scoreboard players set "§a4 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=2400}] ~~~ scoreboard players reset "§a4 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=2400}] ~~~ scoreboard players set "§a3 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=1800}] ~~~ scoreboard players reset "§a3 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=1800}] ~~~ scoreboard players set "§a2 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=1200}] ~~~ scoreboard players reset "§a2 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=1200}] ~~~ scoreboard players set "§a1 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=600}] ~~~ scoreboard players reset "§a1 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=600}] ~~~ scoreboard players set "§a0 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ scoreboard players reset "§a0 minutes!" display


execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ scoreboard players reset "DeathMatch in" display
#pvp
execute @s[tag=host,scores={settings_state=2,timer=35950}] ~~~ scoreboard players set "PvP enables in" display -2

execute @s[tag=host,scores={settings_state=2,timer=35950}] ~~~ scoreboard players set "§a9 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=35400}] ~~~ scoreboard players reset "§a9 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=35400}] ~~~ scoreboard players set "§a8 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=34800}] ~~~ scoreboard players reset "§a8 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=34800}] ~~~ scoreboard players set "§a7 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=34200}] ~~~ scoreboard players reset "§a7 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=34200}] ~~~ scoreboard players set "§a6 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=33600}] ~~~ scoreboard players reset "§a6 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=33600}] ~~~ scoreboard players set "§a5 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=33000}] ~~~ scoreboard players reset "§a5 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=33000}] ~~~ scoreboard players set "§a4 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=32400}] ~~~ scoreboard players reset "§a4 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=32400}] ~~~ scoreboard players set "§a3 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=31800}] ~~~ scoreboard players reset "§a3 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=31800}] ~~~ scoreboard players set "§a2 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=31200}] ~~~ scoreboard players reset "§a2 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=31200}] ~~~ scoreboard players set "§a1 minutes!" display -4
execute @s[tag=host,scores={settings_state=2,timer=30600}] ~~~ scoreboard players reset "§a1 minutes!" display

execute @s[tag=host,scores={settings_state=2,timer=30600}] ~~~ scoreboard players reset "PvP enables in" display
