execute @a[tag=host,scores={settings_state=1}] ~~~ title @a actionbar §eWaiting to start...
execute @a[tag=host,scores={settings_state=1}] ~~~ effect @a weakness 1 0 true
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
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_timer=1.18}] ~~~ tp ~~~ ~5 ~
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_timer=1..50}] ~~~ tp ~~0.1~
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=!dead] ~~~ title @s title You died!
execute @a[tag=host,scores={settings_state=2}] ~~~ execute @a[l=0,lm=0,tag=host] ~~~ title @s actionbar Please do not leave until the game ends.
execute @a[tag=host,scores={settings_state=2}] ~~~ tag @a[l=0,lm=0,tag=!dead,scores={die_anim_timer=51}] add dead
#spectating(30 seconds loop)
execute @a[tag=host,scores={settings_state=2}] ~~~ scoreboard players remove @s spec_timeout 1
execute @a[tag=host,scores={settings_state=2,spec_timeout=300}] ~~~ tag @r[tag=!dead] add spec
execute @a[tag=host,scores={settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec] ~~~ tp @a[tag=dead] ^-1 ^1 ^-2 facing ^-1 ^1 ^1
execute @a[tag=host,scores={settings_state=2,spec_timeout=1..299}] ~~~ execute @a[tag=spec] ~~~ title @a[tag=dead] actionbar Spectating @s
execute @a[tag=host,scores={settings_state=2,spec_timeout=0}] ~~~ tag @a remove spec
execute @a[tag=host,scores={settings_state=2,spec_timeout=0}] ~~~ scoreboard players set @s spec_timeout 300
gamemode 2 @a[tag=dead]
effect @a[tag=dead] invisibility 1 255 true
effect @a[tag=dead] fire_resistance 1 255 true
effect @a[tag=dead] instant_health 1 255 true
effect @a[tag=dead] weakness 1 255 true
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
#trees dropping enchanted apples
execute @e[c=1,type=item,name=apple] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=apple] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Ябълка] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Ябълка] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Jablko] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Jablko] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Æble] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Æble] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Apfel] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Apfel] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Μήλο] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Μήλο] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Manzana] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Manzana] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Omena] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Omena] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Pomme] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Pomme] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Alma] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Alma] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Apel] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Apel] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Mela] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Mela] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=リンゴ] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=リンゴ] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=사과] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=사과] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Eple] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Eple] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Appel] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Appel] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Jabłko] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Jabłko] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Maçã] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Maçã] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Яблоко] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Яблоко] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Jablko] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Jablko] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Äpple] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Äpple] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Elma] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=Elma] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Яблуко] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=Яблуко] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=蘋果] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=蘋果] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
execute @e[c=1,type=item,name=苹果] ~~~ execute @a[r=2] ~~~ give @s appleenchanted
execute @e[c=1,type=item,name=苹果] ~~~ execute @a[r=2] ~~~ kill @e[type=item,c=1]
#had to do this for all languages because thats how minecraft fucking works
#fix your shit microsoft