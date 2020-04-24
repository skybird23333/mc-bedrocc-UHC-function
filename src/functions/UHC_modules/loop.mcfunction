execute @a[tag=host,scores={settings_state=1}] ~~~ effect @a weakness 1 0 true
execute @a[tag=host] ~~~ scoreboard players add @s anim_timer 1
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=1}] ~~~ title @a actionbar §eW§faiting to start...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=2}] ~~~ title @a actionbar W§ea§fiting to start...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=3}] ~~~ title @a actionbar Wa§ei§fting to start...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=4}] ~~~ title @a actionbar Wai§et§fing to start...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=5}] ~~~ title @a actionbar Wait§ei§fng to start...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=6}] ~~~ title @a actionbar Waiti§en§fg to start...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=7}] ~~~ title @a actionbar Waitin§eg§f to start...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=8}] ~~~ title @a actionbar Waiting §et§fo start...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=9}] ~~~ title @a actionbar Waiting t§eo§f start...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=10}] ~~~ title @a actionbar Waiting to §es§ftart...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=11}] ~~~ title @a actionbar Waiting to s§et§fart...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=12}] ~~~ title @a actionbar Waiting to st§ea§frt...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=13}] ~~~ title @a actionbar Waiting to sta§er§ft...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=14}] ~~~ title @a actionbar Waiting to star§et§f...
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=15}] ~~~ title @a actionbar Waiting to start§e.§f..
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=16}] ~~~ title @a actionbar Waiting to start.§e.§f.
execute @a[tag=host,scores={autostart=0,settings_state=1,anim_timer=17}] ~~~ title @a actionbar Waiting to start..§e.§f
execute @a[tag=host,scores={anim_timer=40..}] ~~~ scoreboard players set @s anim_timer 0
#autostart
execute @a[tag=host,scores={settings_state=1,autostart=0..}] ~~~ scoreboard players operation @s start_timer = @s autostart
execute @a[tag=host,scores={settings_state=1,autostart=0..,anim_timer=5}] ~~~ scoreboard players remove @s start_timer 1
execute @a[tag=host,scores={settings_state=1,autostart=0..,anim_timer=15}] ~~~ scoreboard players remove @s start_timer 1
execute @a[tag=host,scores={settings_state=1,autostart=0..,anim_timer=25}] ~~~ scoreboard players remove @s start_timer 1
execute @a[tag=host,scores={settings_state=1,autostart=0..,anim_timer=35}] ~~~ scoreboard players remove @s start_timer 1
execute @a[tag=host,scores={settings_state=1,autostart=0..,start_timer=5}] ~~~ title @a actionbar Starting in 5
execute @a[tag=host,scores={settings_state=1,autostart=0..,start_timer=4}] ~~~ title @a actionbar Starting in 4
execute @a[tag=host,scores={settings_state=1,autostart=0..,start_timer=3}] ~~~ title @a actionbar Starting in 3
execute @a[tag=host,scores={settings_state=1,autostart=0..,start_timer=2}] ~~~ title @a actionbar Starting in 2
execute @a[tag=host,scores={settings_state=1,autostart=0..,start_timer=1}] ~~~ title @a actionbar Starting in 1
execute @a[tag=host,scores={settings_state=1,autostart=0..,start_timer=0}] ~~~ function UHC_start
#alive player counter 
scoreboard players set @a[tag=host] var_alive 0
scoreboard players set @a counter 1
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[lm=1] ~~~ scoreboard players operation @a[tag=host] var_alive += @s counter
execute @a[tag=host,scores={settings_state=1}] ~~~ execute @a ~~~ scoreboard players operation @a[tag=host] var_alive += @s counter
execute @a[tag=host,scores={settings_state=1}] ~~~ scoreboard players operation  "§aJoined: " display = @a[tag=host] var_alive
execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players operation  "§aPlayers Alive: " display = @a[tag=host] var_alive
execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players reset "§aJoined: " display
#on player die
scoreboard players add @s die_anim_timer 0
#the crappy death animation
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_timer=0..50}] ~~~ scoreboard players add @s die_anim_timer 1
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_timer=1}] ~~~ tp ~ ~3 ~
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_timer=1..18}] ~~~ tp ~~~ ~ ~5
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_timer=1..50}] ~~~ tp ~~0.01~
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=!dead] ~~~ title @s title You died!
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=host] ~~~ title @s actionbar Please do not leave until the game ends.
execute @a[tag=host,scores={settings_state=2}] ~~~ tag @a[l=0,lm=0,tag=!dead,scores={die_anim_timer=51}] add dead

#on chicken dinner/victory royale for forknife kidz
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a subtitle §e@a[lm=1] won the game!
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a title §cGame ended
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a[lm=1] subtitle §eCongrats!
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a[lm=1] title §eYou have won!
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ effect @a slow_falling 90 0 true
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ scoreboard objectives setdisplay sidebar
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ scoreboard players set @s settings_state 0
#rules
kill @e[type=xp_orb]
execute @s[tag=host,scores={settings_state=2,timer=0..}] ~~~ scoreboard players remove @s timer 1
execute @a[tag=host,scores={settings_state=0}] ~~~ effect @a instant_health 1 255 true
execute @a[tag=host,scores={settings_state=1}] ~~~ effect @a instant_health 1 255 true
#something else
execute @a[tag=host,scores={settings_state=1}] ~~~ gamemode adventure @a
execute @a[tag=host,scores={settings_state=2}] ~~~ gamemode survival @a
execute @a[tag=host,scores={settings_state=1}] ~~~ gamemode adventure @a
#events for different time settings
execute @s[tag=host,scores={settings_state=2,settings_time=0}] ~~~ function UHC_modules/events/normal
execute @s[tag=host,scores={settings_state=2,settings_time=1}] ~~~ function UHC_modules/events/long
#deathmatch(since this is global why not put it here)
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
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ gamemode 2 @a
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill 9 100 9 -9 100 -9 stone
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill 10 103 10 10 103 -10 lava
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill 10 103 -10 -10 103 -10 lava
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill -10 103 -10 -10 103 10 lava
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ fill -10 103 10 10 103 10 lava
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ tp @a[lm=1] 0 102 0
#disabling stuff
fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air 0 replace end_portal
fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air 0 replace portal

execute @s[tag=host,scores={settings_gapple=1}] ~~~ function UHC_modules/gapple
execute @s[tag=host,scores={settings_spec=1}] ~~~ function UHC_modules/spectate
execute @s[tag=host,scores={settings_spec=0}] ~~~ tp @a[tag=dead] 0 300 0
execute @s[tag=host,scores={settings_spec=0}] ~~~ title @a[tag=dead] actionbar Spectating is disabled.

#HAHA this is still enabled
gamemode 2 @a[tag=dead]
effect @a[tag=dead] invisibility 1 255 true
effect @a[tag=dead] fire_resistance 1 255 true
effect @a[tag=dead] instant_health 1 255 true
effect @a[tag=dead] weakness 1 255 true
clear @a[tag=dead]

execute @a[tag=host,scores={settings_state=2,timer=0..}] ~~~ scoreboard players remove @s spec_timeout 1
execute @a[tag=host,scores={timer=0..,settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec,rxm=-90,rx=-75] ~~~ tp @a[tag=dead] ^-0.5 ^ ^-1 facing ^-0.5 ^ ^1
execute @a[tag=host,scores={timer=0..,settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec,rxm=-74,rx=74] ~~~ tp @a[tag=dead] ^-0.5 ^0.5 ^-2 facing ^-0.5 ^0.5 ^1
execute @a[tag=host,scores={timer=0..,settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec,rxm=75,rx=90] ~~~ tp @a[tag=dead] ^-0.5 ^ ^-1 facing ^-0.5 ^ ^1
execute @a[tag=host,scores={timer=0..,settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec] ~~~ title @a[tag=dead] actionbar §lSpectating §e@s
execute @a[tag=host,scores={timer=0..,settings_state=2,spec_timeout=..0}] ~~~ scoreboard players set @s spec_timeout 300