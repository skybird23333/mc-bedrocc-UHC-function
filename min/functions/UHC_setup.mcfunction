scoreboard objectives add disp dummy "§l§4Ultra§c Hardcore"
scoreboard objectives add counter dummy
scoreboard objectives add sst dummy
scoreboard objectives add var_alive dummy
scoreboard objectives add tmr dummy
scoreboard objectives add settings_healing dummy
scoreboard objectives add settings_time dummy
scoreboard objectives add die_anim_timer dummy
scoreboard objectives add sto dummy
scoreboard players set @s settings_healing 1
scoreboard players set @s settings_time 0
scoreboard objectives setdisplay sidebar disp
spreadplayers 0 0 1 2 @s
spawnpoint @a 0 100 0
setworldspawn 0 100 0
effect @s slow_falling 90 1 true
tag @s add hs
scoreboard players set @a[tag=hs] sst 1
gamerule naturalRegeneration false
gamerule doDaylightCycle false
gamerule doimmediateRespawn true
gamerule showcoordinates true
gamerule spawnRadius 1
gamerule sendCommandFeedback false
gamerule pvp false
time set noon
tellraw @s {"rawtext":[{"text":"§aSetup complete."}]}
tellraw @s {"rawtext":[{"text":"§aYou can now allow players to join and use §e/function UHC_start§a to start the game."}]}
tellraw @s {"rawtext":[{"text":"§ePlease make sure that you do NOT leave until the game ends, or the game will corrupt."}]}