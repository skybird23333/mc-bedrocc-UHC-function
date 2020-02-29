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
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ tellraw @s {"rawtext":[{"text":"The game has now ended. You can now safely exit the world. DO NOT start a game again in this world."}]}
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
execute @s[tag=host,scores={settings_state=2,timer=11950}] ~~~ scoreboard players set "§l§cDeathMatch" display -2

execute @s[tag=host,scores={settings_state=2,timer=11950}] ~~~ scoreboard players set "§e20min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=11400}] ~~~ scoreboard players reset "§e20min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=11400}] ~~~ scoreboard players set "§e19min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ scoreboard players reset "§e19min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ scoreboard players set "§e18min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players reset "§e18min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players set "§e17min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=9600}] ~~~ scoreboard players reset "§e17min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=9600}] ~~~ scoreboard players set "§e16min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=9000}] ~~~ scoreboard players reset "§e16min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=9000}] ~~~ scoreboard players set "§e15min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=8400}] ~~~ scoreboard players reset "§e15min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=8400}] ~~~ scoreboard players set "§e14min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=7800}] ~~~ scoreboard players reset "§e14min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=7800}] ~~~ scoreboard players set "§e13min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=7200}] ~~~ scoreboard players reset "§e13min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=7200}] ~~~ scoreboard players set "§e12min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=6600}] ~~~ scoreboard players reset "§e12min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=6600}] ~~~ scoreboard players set "§e11min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=6000}] ~~~ scoreboard players reset "§e11min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=6000}] ~~~ scoreboard players set "§e10min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=5400}] ~~~ scoreboard players reset "§e10min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=5400}] ~~~ scoreboard players set "§e9min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=4800}] ~~~ scoreboard players reset "§e9min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=4800}] ~~~ scoreboard players set "§e8min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=4200}] ~~~ scoreboard players reset "§e8min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=4200}] ~~~ scoreboard players set "§e7min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=3600}] ~~~ scoreboard players reset "§e7min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=3600}] ~~~ scoreboard players set "§e6min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=3000}] ~~~ scoreboard players reset "§e6min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=3000}] ~~~ scoreboard players set "§e5min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=2400}] ~~~ scoreboard players reset "§e5min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=2400}] ~~~ scoreboard players set "§e4min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=1800}] ~~~ scoreboard players reset "§e4min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=1800}] ~~~ scoreboard players set "§e3min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=1200}] ~~~ scoreboard players reset "§e3min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=1200}] ~~~ scoreboard players set "§e2min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=600}] ~~~ scoreboard players reset "§e2min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=600}] ~~~ scoreboard players set "§e1min§f left!" display -3
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ scoreboard players reset "§e1min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ scoreboard players reset "§f " display
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ scoreboard players reset "§l§cDeathMatch" display
#pvp
execute @s[tag=host,scores={settings_state=2,timer=11950}] ~~~ scoreboard players set "§r " display -4
execute @s[tag=host,scores={settings_state=2,timer=11950}] ~~~ scoreboard players set "§l§cPVP" display -5

execute @s[tag=host,scores={settings_state=2,timer=11950}] ~~~ scoreboard players set "§e3min§f left!" display -6
execute @s[tag=host,scores={settings_state=2,timer=11400}] ~~~ scoreboard players reset "§e3min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=11400}] ~~~ scoreboard players set "§e2min§f left!" display -6
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ scoreboard players reset "§e2min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=10800}] ~~~ scoreboard players set "§e1min§f left!" display -6
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players reset "§e1min§f left!" display
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players reset "§r " display
execute @s[tag=host,scores={settings_state=2,timer=10200}] ~~~ scoreboard players reset "§l§cPVP" display


