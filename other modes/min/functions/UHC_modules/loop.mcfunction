execute @a[tag=hs,scores={sst=1}] ~~~ title @a actionbar §eWaiting to start...
execute @a[tag=hs,scores={sst=1}] ~~~ effect @a weakness 1 0 true
scoreboard players set @a[tag=hs] var_alive 0
scoreboard players set @a counter 1
execute @a[tag=hs,scores={sst=2}] ~~~ execute @a[lm=1] ~~~ scoreboard players operation @a[tag=hs] var_alive += @s counter
execute @a[tag=hs,scores={sst=1}] ~~~ execute @a ~~~ scoreboard players operation @a[tag=hs] var_alive += @s counter
execute @a[tag=hs,scores={sst=1}] ~~~ scoreboard players operation  "§aJoined: " disp = @a[tag=hs] var_alive
execute @a[tag=hs,scores={sst=2}] ~~~ scoreboard players operation  "§aPlayers Alive: " disp = @a[tag=hs] var_alive
execute @a[tag=hs,scores={sst=2}] ~~~ scoreboard players reset "§aJoined: " disp
scoreboard players add @s die_anim_tmr 0
execute @a[tag=hs,scores={sst=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_tmr=0..50}] ~~~ scoreboard players add @s die_anim_tmr 1
execute @a[tag=hs,scores={sst=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_tmr=1}] ~~~ tp ~ ~3 ~
execute @a[tag=hs,scores={sst=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_tmr=1..18}] ~~~ tp ~~~ ~ ~5
execute @a[tag=hs,scores={sst=2}] ~~~ execute @a[l=0,lm=0,scores={die_anim_tmr=1..50}] ~~~ tp ~~0.01~
execute @a[tag=hs,scores={sst=2}] ~~~ execute @a[l=0,lm=0,tag=!dead] ~~~ title @s title You died!
execute @a[tag=hs,scores={sst=2}] ~~~ execute @a[l=0,lm=0,tag=hs] ~~~ title @s actionbar Please do not leave until the game ends.
execute @a[tag=hs,scores={sst=2}] ~~~ tag @a[l=0,lm=0,tag=!dead,scores={die_anim_tmr=51}] add dead
execute @a[tag=hs,scores={sst=2,tmr=0..}] ~~~ scoreboard players remove @s sto 1
execute @a[tag=hs,scores={tmr=0..,sst=2,sto=1..299}] ~~~ execute @a[tag=spec,rxm=-90,rx=-75] ~~~ tp @a[tag=dead] ^-0.5 ^ ^-1 facing ^-0.5 ^ ^1
execute @a[tag=hs,scores={tmr=0..,sst=2,sto=1..299}] ~~~ execute @a[tag=spec,rxm=-74,rx=74] ~~~ tp @a[tag=dead] ^-0.5 ^0.5 ^-2 facing ^-0.5 ^0.5 ^1
execute @a[tag=hs,scores={tmr=0..,sst=2,sto=1..299}] ~~~ execute @a[tag=spec,rxm=75,rx=90] ~~~ tp @a[tag=dead] ^-0.5 ^ ^-1 facing ^-0.5 ^ ^1
execute @a[tag=hs,scores={tmr=0..,sst=2,sto=1..299}] ~~~ execute @a[tag=spec] ~~~ title @a[tag=dead] actionbar §lSpectating §e@s
execute @a[tag=hs,scores={tmr=0..,sst=2,sto=..0}] ~~~ tag @a remove spec
execute @a[tag=hs,scores={tmr=0..,sst=2,sto=..0}] ~~~ tag @r[tag=!dead] add spec
execute @a[tag=hs,scores={tmr=0..,sst=2,sto=..0}] ~~~ scoreboard players set @s sto 300
execute @a[tag=hs,scores={tmr=0,sst=2}] ~~~ tp @a[tag=dead] 0 120 0 0 90
gamemode 2 @a[tag=dead]
effect @a[tag=dead] invisibility 1 255 true
effect @a[tag=dead] fire_resistance 1 255 true
effect @a[tag=dead] instant_health 1 255 true
effect @a[tag=dead] weakness 1 255 true
execute @s[tag=hs,scores={sst=2,var_alive=1}] ~~~ title @a subtitle §e@a[lm=1] won the game!
execute @s[tag=hs,scores={sst=2,var_alive=1}] ~~~ title @a title §cGame ended
execute @s[tag=hs,scores={sst=2,var_alive=1}] ~~~ title @a[lm=1] subtitle §eCongrats!
execute @s[tag=hs,scores={sst=2,var_alive=1}] ~~~ title @a[lm=1] title §eYou have won!
execute @s[tag=hs,scores={sst=2,var_alive=1}] ~~~ effect @a slow_falling 90 0 true
execute @s[tag=hs,scores={sst=2,var_alive=1}] ~~~ scoreboard objectives setdisplay sidebar
execute @s[tag=hs,scores={sst=2,var_alive=1}] ~~~ scoreboard players set @s sst 0
kill @e[type=xp_orb]
execute @s[tag=hs,scores={sst=2,tmr=0..}] ~~~ scoreboard players remove @s tmr 1
execute @a[tag=hs,scores={sst=0}] ~~~ effect @a instant_health 1 255 true
execute @a[tag=hs,scores={sst=1}] ~~~ effect @a instant_health 1 255 true
execute @a[tag=hs,scores={sst=1}] ~~~ gamemode adventure @a
execute @a[tag=hs,scores={sst=2}] ~~~ gamemode survival @a
execute @a[tag=hs,scores={sst=1}] ~~~ gamemode adventure @a
execute @s[tag=hs,scores={sst=2,settings_time=0}] ~~~ function UHC_modules/events/normal
execute @s[tag=hs,scores={sst=2,settings_time=1}] ~~~ function UHC_modules/events/long
execute @s[tag=hs,scores={sst=2,tmr=9000}] ~~~ tellraw @a {"rawtext":[{"text":"§eDeathmatch in 15 minutes!"}]}
execute @s[tag=hs,scores={sst=2,tmr=6000}] ~~~ tellraw @a {"rawtext":[{"text":"§eDeathmatch in 10 minutes!"}]}
execute @s[tag=hs,scores={sst=2,tmr=3000}] ~~~ tellraw @a {"rawtext":[{"text":"§eDeathmatch in 5 minutes!"}]}
execute @s[tag=hs,scores={sst=2,tmr=600}] ~~~ tellraw @a {"rawtext":[{"text":"§eDeathmatch in 1 minute!"}]}
execute @s[tag=hs,scores={sst=2,tmr=100}] ~~~ title @a subtitle §eDeathmatch in §l10
execute @s[tag=hs,scores={sst=2,tmr=100}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=90}] ~~~ title @a subtitle §eDeathmatch in §l9
execute @s[tag=hs,scores={sst=2,tmr=90}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=80}] ~~~ title @a subtitle §eDeathmatch in §l8
execute @s[tag=hs,scores={sst=2,tmr=80}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=70}] ~~~ title @a subtitle §eDeathmatch in §l7
execute @s[tag=hs,scores={sst=2,tmr=70}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=60}] ~~~ title @a subtitle §eDeathmatch in §l6
execute @s[tag=hs,scores={sst=2,tmr=60}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=50}] ~~~ title @a subtitle §eDeathmatch in §l5
execute @s[tag=hs,scores={sst=2,tmr=50}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=40}] ~~~ title @a subtitle §eDeathmatch in §l4
execute @s[tag=hs,scores={sst=2,tmr=40}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=30}] ~~~ title @a subtitle §eDeathmatch in §l3
execute @s[tag=hs,scores={sst=2,tmr=30}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=20}] ~~~ title @a subtitle §eDeathmatch in §l2
execute @s[tag=hs,scores={sst=2,tmr=20}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=10}] ~~~ title @a subtitle §eDeathmatch in §l1
execute @s[tag=hs,scores={sst=2,tmr=10}] ~~~ title @a title §f
execute @s[tag=hs,scores={sst=2,tmr=0}] ~~~ gamemode 2 @a
execute @s[tag=hs,scores={sst=2,tmr=0}] ~~~ fill 9 100 9 -9 100 -9 stone
execute @s[tag=hs,scores={sst=2,tmr=0}] ~~~ fill 10 103 10 10 103 -10 lava
execute @s[tag=hs,scores={sst=2,tmr=0}] ~~~ fill 10 103 -10 -10 103 -10 lava
execute @s[tag=hs,scores={sst=2,tmr=0}] ~~~ fill -10 103 -10 -10 103 10 lava
execute @s[tag=hs,scores={sst=2,tmr=0}] ~~~ fill -10 103 10 10 103 10 lava
execute @s[tag=hs,scores={sst=2,tmr=0}] ~~~ tp @a[lm=1] 0 102 0
fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air 0 replace end_portal
fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air 0 replace portal
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