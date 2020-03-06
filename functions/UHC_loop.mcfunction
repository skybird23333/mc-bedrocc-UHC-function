execute @a[tag=host,scores={settings_state=1}] ~~~ title @a actionbar §eWaiting to start...
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=dead] ~~~ tp 0 150 0 0 0
execute @a[tag=host,scores={settings_state=1}] ~~~ effect @a weakness 1 0 true
#alive player counter 
scoreboard players set "§aPlayers Alive: " display 0
scoreboard players set @a counter 1
execute @a[l=1,lm=1] ~~~ scoreboard players operation "§aPlayers Alive: " display += @s counter

execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players operation @a[tag=host] var_alive = "§aPlayers Alive: " display
#on player die
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=!dead] ~~~ title @s subtitle Killed by @p
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=!dead] ~~~ title @s title You died!
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=host] ~~~ title @s actionbar Please do not leave until the game ends.
execute @a[tag=host,scores={settings_state=2}] ~~~ tag @a[l=0,lm=0,tag=!dead] add dead

#on chicken dinner/victory royale for forknife kidz
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a subtitle §e@a[l=1,lm=1] won the game!
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a title §cGame ended
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a[l=1,lm=1] subtitle §eCongrats!
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a[l=1,lm=1] title §eYou have won!
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ effect @a slow_falling 90 0 true
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ scoreboard objectives setdisplay sidebar
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ scoreboard players set @s settings_state 0
#rules
kill @e[type=xp_orb]

execute @s[tag=host,scores={settings_state=2,timer=0..}] ~~~ scoreboard players remove @s timer 1

#if the last few players were all noob/pro and they could not kill each other for 20 mins
#one second = 20 ticks(usually)
execute @s[tag=host,scores={settings_state=2,timer=9000}] ~~~ tellraw @a {"rawtext":[{"text":"§eDeathmatch in 15 minutes!"}]}
execute @s[tag=host,scores={settings_state=2,timer=6000}] ~~~ tellraw @a {"rawtext":[{"text":"§eDeathmatch in 10 minutes!"}]}
execute @s[tag=host,scores={settings_state=2,timer=3000}] ~~~ tellraw @a {"rawtext":[{"text":"§eDeathmatch in 5 minutes!"}]}
execute @s[tag=host,scores={settings_state=2,timer=600}] ~~~ tellraw @a {"rawtext":[{"text":"§eDeathmatch in 1 minute!"}]}
execute @s[tag=host,scores={settings_state=2,timer=100}] ~~~ title @a subtitle §eDeathmatch in §l10
execute @s[tag=host,scores={settings_state=2,timer=100}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=90}] ~~~ title @a subtitle §eDeathmatch in §l9
execute @s[tag=host,scores={settings_state=2,timer=90}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=80}] ~~~ title @a subtitle §eDeathmatch in §l8
execute @s[tag=host,scores={settings_state=2,timer=80}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=70}] ~~~ title @a subtitle §eDeathmatch in §l7
execute @s[tag=host,scores={settings_state=2,timer=70}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=60}] ~~~ title @a subtitle §eDeathmatch in §l6
execute @s[tag=host,scores={settings_state=2,timer=60}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=50}] ~~~ title @a subtitle §eDeathmatch in §l5
execute @s[tag=host,scores={settings_state=2,timer=50}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=40}] ~~~ title @a subtitle §eDeathmatch in §l4
execute @s[tag=host,scores={settings_state=2,timer=40}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=30}] ~~~ title @a subtitle §eDeathmatch in §l3
execute @s[tag=host,scores={settings_state=2,timer=30}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=20}] ~~~ title @a subtitle §eDeathmatch in §l2
execute @s[tag=host,scores={settings_state=2,timer=20}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=10}] ~~~ title @a subtitle §eDeathmatch in §l1
execute @s[tag=host,scores={settings_state=2,timer=10}] ~~~ title @a title §f
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill 9 100 9 -9 100 -9 stone
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill 10 103 10 10 103 -10 lava
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill 10 103 -10 -10 103 -10 lava
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill -10 103 -10 -10 103 10 lava
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill -10 103 10 10 103 10 lava
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ tp @a[l=1,lm=1] 0 102 0

execute @a[tag=host,scores={settings_state=0}] ~~~ effect @a instant_health 1 255 true
execute @a[tag=host,scores={settings_state=1}] ~~~ effect @a instant_health 1 255 true

#something else
execute @a[tag=host,scores={settings_state=1}] ~~~ gamemode adventure @a
execute @a[tag=host,scores={settings_state=2}] ~~~ gamemode survival @a
execute @a[tag=host,scores={settings_state=1}] ~~~ gamemode adventure @a
#pvp disallow tiem
execute @s[tag=host,scores={settings_state=2,timer=11400}] ~~~ tellraw @a {"rawtext":[{"text":"§ePVP will be turned on in §c2§e minutes!"}]}
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ tellraw @a {"rawtext":[{"text":"§ePVP will be turned on in §c1§e minute!"}]}
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ tellraw @a {"rawtext":[{"text":"§ePVP has been turned on."}]}
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ gamerule pvp true
#heal
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ effect @a saturation 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ effect @a instant_health 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ tellraw @a {"rawtext":[{"text":"§aEveryone has been healed!"}]}
execute @s[tag=host,scores={settings_state=2,timer=9600}] ~~~ effect @a saturation 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=9600}] ~~~ effect @a instant_health 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=9600}] ~~~ tellraw @a {"rawtext":[{"text":"§aEveryone has been healed!"}]}
execute @s[tag=host,scores={settings_state=2,timer=8400}] ~~~ effect @a saturation 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=8400}] ~~~ effect @a instant_health 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=8400}] ~~~ tellraw @a {"rawtext":[{"text":"§aEveryone has been healed!"}]}
execute @s[tag=host,scores={settings_state=2,timer=7200}] ~~~ effect @a saturation 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=7200}] ~~~ effect @a instant_health 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=7200}] ~~~ tellraw @a {"rawtext":[{"text":"§aEveryone has been healed!"}]}
execute @s[tag=host,scores={settings_state=2,timer=4800}] ~~~ effect @a saturation 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=4800}] ~~~ effect @a instant_health 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=4800}] ~~~ tellraw @a {"rawtext":[{"text":"§aEveryone has been healed!"}]}
execute @s[tag=host,scores={settings_state=2,timer=3600}] ~~~ effect @a saturation 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=3600}] ~~~ effect @a instant_health 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=3600}] ~~~ tellraw @a {"rawtext":[{"text":"§aEveryone has been healed!"}]}
execute @s[tag=host,scores={settings_state=2,timer=2400}] ~~~ effect @a saturation 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=2400}] ~~~ effect @a instant_health 1 255 true
execute @s[tag=host,scores={settings_state=2,timer=2400}] ~~~ tellraw @a {"rawtext":[{"text":"§aEveryone has been healed!\n§cThis is the final heal of this game."}]}
#scoreboard time display
#time till deathmatch
execute @s[tag=host,scores={settings_state=2,timer=11950}] ~~~ scoreboard players set "§f " display -1
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players set "DeathMatch in" display -2

execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players set "§a17 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=9600}] ~~~ scoreboard players reset "§a17 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=9600}] ~~~ scoreboard players set "§a16 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=9000}] ~~~ scoreboard players reset "§a16 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=9000}] ~~~ scoreboard players set "§a15 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=8400}] ~~~ scoreboard players reset "§a15 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=8400}] ~~~ scoreboard players set "§a14 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=7800}] ~~~ scoreboard players reset "§a14 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=7800}] ~~~ scoreboard players set "§a13 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=7200}] ~~~ scoreboard players reset "§a13 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=7200}] ~~~ scoreboard players set "§a12 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=6600}] ~~~ scoreboard players reset "§a12 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=6600}] ~~~ scoreboard players set "§a11 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=6000}] ~~~ scoreboard players reset "§a11 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=6000}] ~~~ scoreboard players set "§a10 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=5400}] ~~~ scoreboard players reset "§a10 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=5400}] ~~~ scoreboard players set "§a9 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=4800}] ~~~ scoreboard players reset "§a9 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=4800}] ~~~ scoreboard players set "§a8 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=4200}] ~~~ scoreboard players reset "§a8 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=4200}] ~~~ scoreboard players set "§a7 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=3600}] ~~~ scoreboard players reset "§a7 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=3600}] ~~~ scoreboard players set "§a6 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=3000}] ~~~ scoreboard players reset "§a6 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=3000}] ~~~ scoreboard players set "§a5 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=2400}] ~~~ scoreboard players reset "§a5 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=2400}] ~~~ scoreboard players set "§a4 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=1800}] ~~~ scoreboard players reset "§a4 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=1800}] ~~~ scoreboard players set "§a3 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=1200}] ~~~ scoreboard players reset "§a3 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=1200}] ~~~ scoreboard players set "§a2 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=600}] ~~~ scoreboard players reset "§a2 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=600}] ~~~ scoreboard players set "§a1 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ scoreboard players reset "§a1 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ scoreboard players reset "§f " display
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ scoreboard players reset "DeathMatch in" display
#pvp
execute @s[tag=host,scores={settings_state=2,timer=11950}] ~~~ scoreboard players set "PvP enables in" display -2

execute @s[tag=host,scores={settings_state=2,timer=11950}] ~~~ scoreboard players set "§a3 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=11400}] ~~~ scoreboard players reset "§a3 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=11400}] ~~~ scoreboard players set "§a2 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ scoreboard players reset "§a2 minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ scoreboard players set "§a1 minutes!" display -3
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players reset "§a1Minutes!" display
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players reset "PvP enables in" display
