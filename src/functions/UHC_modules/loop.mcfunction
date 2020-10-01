tellraw @a[tag=eventLister,tag=host] {"rawtext":[{"text":"loop is run"}]}
execute @s[tag=host,scores={settings_state=1}] ~~~ effect @a weakness 1 0 true
execute @s[tag=host] ~~~ scoreboard players add @s anim_timer 1
execute @s[tag=host,scores={settings_state=1,anim_timer=1}] ~~~ title @a actionbar §4W§faiting to start...
execute @s[tag=host,scores={settings_state=1,anim_timer=2}] ~~~ title @a actionbar W§4a§fiting to start...
execute @s[tag=host,scores={settings_state=1,anim_timer=3}] ~~~ title @a actionbar Wa§4i§fting to start...
execute @s[tag=host,scores={settings_state=1,anim_timer=4}] ~~~ title @a actionbar Wai§4t§fing to start...
execute @s[tag=host,scores={settings_state=1,anim_timer=5}] ~~~ title @a actionbar Wait§4i§fng to start...
execute @s[tag=host,scores={settings_state=1,anim_timer=6}] ~~~ title @a actionbar Waiti§4n§fg to start...
execute @s[tag=host,scores={settings_state=1,anim_timer=7}] ~~~ title @a actionbar Waitin§4g§f to start...
execute @s[tag=host,scores={settings_state=1,anim_timer=8}] ~~~ title @a actionbar Waiting §4t§fo start...
execute @s[tag=host,scores={settings_state=1,anim_timer=9}] ~~~ title @a actionbar Waiting t§4o§f start...
execute @s[tag=host,scores={settings_state=1,anim_timer=10}] ~~~ title @a actionbar Waiting to §4s§ftart...
execute @s[tag=host,scores={settings_state=1,anim_timer=11}] ~~~ title @a actionbar Waiting to s§4t§fart...
execute @s[tag=host,scores={settings_state=1,anim_timer=12}] ~~~ title @a actionbar Waiting to st§4a§frt...
execute @s[tag=host,scores={settings_state=1,anim_timer=13}] ~~~ title @a actionbar Waiting to sta§4r§ft...
execute @s[tag=host,scores={settings_state=1,anim_timer=14}] ~~~ title @a actionbar Waiting to star§4t§f...
execute @s[tag=host,scores={settings_state=1,anim_timer=15}] ~~~ title @a actionbar Waiting to start§4.§f..
execute @s[tag=host,scores={settings_state=1,anim_timer=16}] ~~~ title @a actionbar Waiting to start.§4.§f.
execute @s[tag=host,scores={settings_state=1,anim_timer=17}] ~~~ title @a actionbar Waiting to start..§4.§f
execute @s[tag=host,scores={settings_state=1,anim_timer=18}] ~~~ title @a actionbar Waiting to start...
execute @s[tag=host,scores={settings_state=1,anim_timer=19..40}] ~~~ title @a actionbar Waiting to start...
execute @s[tag=host,scores={anim_timer=40..}] ~~~ scoreboard players set @s anim_timer 0
#autostart
#autostart usuage:
#SCOREBOARD players set start_timer to time u want in secs
#SCOREBOARD players set autostart 1
#its stupid so it will no longer work
execute @s[tag=host,scores={settings_state=1,autostart=1..}] ~~~ scoreboard players operation @s start_timer = @s autostart
execute @s[tag=host,scores={settings_state=1,autostart=1..,anim_timer=5}] ~~~ scoreboard players remove @s start_timer 1
execute @s[tag=host,scores={settings_state=1,autostart=1..,anim_timer=15}] ~~~ scoreboard players remove @s start_timer 1
execute @s[tag=host,scores={settings_state=1,autostart=1..,anim_timer=25}] ~~~ scoreboard players remove @s start_timer 1
execute @s[tag=host,scores={settings_state=1,autostart=1..,anim_timer=35}] ~~~ scoreboard players remove @s start_timer 1
execute @s[tag=host,scores={settings_state=1,autostart=1..,start_timer=5}] ~~~ title @a actionbar Starting in 5
execute @s[tag=host,scores={settings_state=1,autostart=1..,start_timer=4}] ~~~ title @a actionbar Starting in 4
execute @s[tag=host,scores={settings_state=1,autostart=1..,start_timer=3}] ~~~ title @a actionbar Starting in 3
execute @s[tag=host,scores={settings_state=1,autostart=1..,start_timer=2}] ~~~ title @a actionbar Starting in 2
execute @s[tag=host,scores={settings_state=1,autostart=1..,start_timer=1}] ~~~ title @a actionbar Starting in 1
execute @s[tag=host,scores={settings_state=1,autostart=1..,start_timer=0}] ~~~ function UHC_start
#alive player counter 
scoreboard players set @a[tag=host] var_alive 0
#in game
execute @s[tag=host,scores={settings_state=2}] ~~~ execute @a[tag=!dead] ~~~ scoreboard players add @a[tag=host] var_alive 1
execute @s[tag=host,scores={settings_state=1}] ~~~ execute @a ~~~ scoreboard players operation @a[tag=host] var_alive += 1
#display
execute @s[tag=host,scores={settings_state=1}] ~~~ scoreboard players operation  "§aJoined: " display = @a[tag=host] var_alive
execute @s[tag=host,scores={settings_state=2}] ~~~ scoreboard players operation  "§aPlayers Alive: " display = @a[tag=host] var_alive
execute @s[tag=host,scores={settings_state=2}] ~~~ scoreboard players reset "§aJoined: " display
#on player die
scoreboard players add @s die_anim_timer 0
#commiting die
execute @s[tag=host,scores={settings_state=2}] ~~~ tag @a add check
execute @s[tag=host,scores={settings_state=2}] ~~~ tag @e[type=player] remove check
execute @s[tag=host,scores={settings_state=2}] ~~~ tag @e[type=player] add task
execute @s[tag=host,scores={settings_state=2}] ~~~ tag @a[tag=check] remove task
execute @s[tag=host,scores={settings_state=2}] ~~~ scoreboard players set @a death 1
execute @s[tag=host,scores={settings_state=2}] ~~~ scoreboard players set @e[type=player] death 0
execute @s[tag=host,scores={settings_state=2}] ~~~ scoreboard players add @a[scores={death=1,died=0}] deathCount 1
execute @s[tag=host,scores={settings_state=2}] ~~~ scoreboard players set @a[scores={death=1,died=0}] died 1
execute @s[tag=host,scores={settings_state=2}] ~~~ scoreboard players set @e[type=player,scores={death=0}] died 0
#death counter code by HongyiMC
#sorry about ur yt bro, just tell me if you want this gone
execute @s[tag=host,scores={settings_state=2}] ~~~ execute @a[scores={deathCount=1},tag=!dead] ~~~ title @s subtitle Better luck next time.
execute @s[tag=host,scores={settings_state=2}] ~~~ execute @a[scores={deathCount=1},tag=!dead] ~~~ title @s title Eliminated
execute @s[tag=host,scores={settings_state=2}] ~~~ execute @a[scores={deathCount=1},tag=!dead] ~~~ summon lightning_bolt ~~3~
execute @s[tag=host,scores={settings_state=2}] ~~~ execute @a[scores={deathCount=1},tag=!dead] ~~~ playsound block.bell.hit @a ~~~ 1 0.2
execute @s[tag=host,scores={settings_state=2}] ~~~ execute @a[scores={deathCount=1},tag=!dead] ~~~ playsound block.bell.hit @s ~~~ 1 3
execute @s[tag=host,scores={settings_state=2}] ~~~ tag @a[scores={deathCount=1},tag=!dead] add dead

#on chicken dinner/victory royale for forknife players
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ fill 5 200 5 -5 202 -5 air
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ fill 5 200 5 -5 200 -5 quartz_block
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ fill 1 200 1 -1 200 -1 diamond_block
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ fill 3 201 3 -3 201 -3 iron_block
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ fill 2 201 2 -2 201 -2 gold_block
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ setblock 0 201 0 beacon
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ setblock 1 202 0 diamond_block
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ setblock -1 202 0 diamond_block
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ setblock 0 202 1 diamond_block
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ setblock 0 202 -1 diamond_block
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ setblock 0 202 0 glass
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ tp @a[tag=dead] -3 201 -3
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ tp @a[tag=!dead] 0 204 0
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ playsound block.bell.hit @s ~~~ 1 10
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a subtitle §e@a[tag=!dead] won the game!
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a[tag=!dead] subtitle Winner winner chicken dinner!
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ title @a title §eMatch ended
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ tag @a remove dead
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ effect @a slow_falling 90 0 true
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ scoreboard objectives setdisplay sidebar
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ playsound record.chirp @a
execute @s[tag=host,scores={settings_state=2,var_alive=1}] ~~~ scoreboard players set @s settings_state 0
execute @s[tag=host,scores={settings_state=0}] ~~~ particle minecraft:totem_particle 0 203 0
#rules
kill @e[type=xp_orb]
execute @s[tag=host,scores={settings_state=2,timer=0..}] ~~~ scoreboard players remove @s timer 1
execute @s[tag=host,scores={settings_state=0}] ~~~ effect @a instant_health 1 255 true
execute @s[tag=host,scores={settings_state=1}] ~~~ effect @a instant_health 1 255 true
#something else
execute @s[tag=host,scores={settings_state=1}] ~~~ gamemode adventure @a
execute @s[tag=host,scores={settings_state=2}] ~~~ gamemode survival @a[tag=!dead]
execute @s[tag=host,scores={settings_state=1}] ~~~ gamemode adventure @a
#events for different time settings
execute @s[tag=host,scores={settings_state=2,settings_time=0}] ~~~ function UHC_modules/events/normal
execute @s[tag=host,scores={settings_state=2,settings_time=1}] ~~~ function UHC_modules/events/long
#deathmatch
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
execute @s[tag=host,scores={settings_state=2,timer=0}] ~~~ tp @a[tag=!dead] 0 102 0
#disabling stuff
fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air 0 replace end_portal
fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air 0 replace portal
#settings
execute @s[tag=host,scores={settings_autosmelt=1}] ~~~ function UHC_modules/autosmelt
execute @s[tag=host,scores={settings_gapple=1}] ~~~ function UHC_modules/gapple
execute @s[tag=host,scores={settings_spec=1}] ~~~ function UHC_modules/spectate
execute @s[tag=host,scores={settings_spec=0}] ~~~ tp @a[tag=dead] 0 300 0
execute @s[tag=host,scores={settings_spec=0}] ~~~ title @a[tag=dead] actionbar Spectating is disabled.

#HAHA this is still enabled
#things for dead people(no offense)
gamemode 2 @a[tag=dead]
execute @a[tag=dead] ~~~ function UHC_modules/barrierInv
effect @a[tag=dead] invisibility 1 255 true
effect @a[tag=dead] fire_resistance 1 255 true
effect @a[tag=dead] instant_health 1 255 true
effect @a[tag=dead] weakness 1 255 true

execute @s[tag=host,scores={settings_state=2,timer=0..}] ~~~ scoreboard players remove @s spec_timeout 1
execute @s[tag=host,scores={timer=1..,settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec,rxm=-90,rx=-75] ~~~ tp @a[tag=dead] ^-0.5 ^ ^-1 facing ^-0.5 ^ ^1
execute @s[tag=host,scores={timer=1..,settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec,rxm=-74,rx=74] ~~~ tp @a[tag=dead] ^-0.5 ^0.5 ^-2 facing ^-0.5 ^0.5 ^1
execute @s[tag=host,scores={timer=1..,settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec,rxm=75,rx=90] ~~~ tp @a[tag=dead] ^-0.5 ^ ^-1 facing ^-0.5 ^ ^1
execute @s[tag=host,scores={timer=1..,settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec] ~~~ title @a[tag=dead] actionbar §lSpectating §e@s
execute @s[tag=host,scores={timer=1..,settings_state=2,spec_timeout=..0}] ~~~ scoreboard players set @s spec_timeout 300

#enchating stuff
#pickaxe/axe/stuff
enchant @s efficiency 2

#removing ores/stones
execute @a ~~~ fill ~7 30 ~7 ~-7 0 ~-7 diamond_ore 0 replace emerald_ore
execute @a ~~~ fill ~7 30 ~7 ~-7 0 ~-7 diamond_ore 0 replace stone 1
execute @a ~~~ fill ~7 90 ~7 ~-7 0 ~-7 coal_ore 0 replace stone 3
execute @a ~~~ fill ~7 90 ~7 ~-7 0 ~-7 iron_ore 0 replace stone 5
execute @a ~~~ fill ~7 150 ~7 ~-7 90 ~-7 coal_ore 0 replace stone 3
execute @a ~~~ fill ~7 150 ~7 ~-7 90 ~-7 iron_ore 0 replace stone 5



#remove barrrier
execute @e[type=item,name="Bariéra"] ~~~ kill
execute @e[type=item,name="Бариера"] ~~~ kill
execute @e[type=item,name="Barriere"] ~~~ kill
execute @e[type=item,name="Εμπόδιο"] ~~~ kill
execute @e[type=item,name="Barrier"] ~~~ kill
execute @e[type=item,name="Barrera"] ~~~ kill
execute @e[type=item,name="Este"] ~~~ kill
execute @e[type=item,name="Barrera"] ~~~ kill
execute @e[type=item,name="Barrière"] ~~~ kill
execute @e[type=item,name="Barrière invisible"] ~~~ kill
execute @e[type=item,name="Akadály"] ~~~ kill
execute @e[type=item,name="Penghalang"] ~~~ kill
execute @e[type=item,name="Barriera"] ~~~ kill
execute @e[type=item,name="バリアブロック"] ~~~ kill
execute @e[type=item,name="방벽"] ~~~ kill
execute @e[type=item,name="Barriere"] ~~~ kill
execute @e[type=item,name="Barrière"] ~~~ kill
execute @e[type=item,name="Bariera"] ~~~ kill
execute @e[type=item,name="Barreira"] ~~~ kill
execute @e[type=item,name="Барьер"] ~~~ kill
execute @e[type=item,name="Barriär"] ~~~ kill
execute @e[type=item,name="Bariéra"] ~~~ kill
execute @e[type=item,name="Bariyer"] ~~~ kill
execute @e[type=item,name="Бар’єр"] ~~~ kill
execute @e[type=item,name="屏障"] ~~~ kill


#despawn
execute @s[tag=host] ~~~ execute @a ~~~ scoreboard players set @e[r=40,type=!player] despawn_timer 0
execute @s[tag=host] ~~~ scoreboard players remove @e[type=!player] despawn_timer 1
execute @s[tag=host] ~~~ execute @e[scores={despawn_timer=..-800},type=!player] ~~~ tp ~ -5 ~

#remove mobs in pregame
execute @s[tag=host,scores={settings_state=1}] ~~~ tp @e[type=!player] 42069 420 42069

#beta info
execute @s[tag=host] ~~~ scoreboard players operation timer debugger = @s timer
execute @s[tag=host] ~~~ scoreboard players operation var_alive debugger = @s var_alive
execute @s[tag=host] ~~~ scoreboard players operation settings_state debugger = @s settings_state
execute @s[tag=host] ~~~ scoreboard players operation spec_timeout debugger = @s spec_timeout
execute @s[tag=host] ~~~ scoreboard players operation anim_timer debugger = @s anim_timer

#a
#scoreboard objectives setdisplay list debugger