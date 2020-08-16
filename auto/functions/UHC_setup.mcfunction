#scoreboard setup
scoreboard objectives add display dummy "§l§4Ultra§c Hardcore"
scoreboard objectives add counter dummy
scoreboard objectives add settings_state dummy
scoreboard objectives add var_alive dummy
scoreboard objectives add timer dummy
scoreboard objectives add settings_healing dummy
scoreboard objectives add settings_time dummy
scoreboard objectives add die_anim_timer dummy
scoreboard objectives add spec_timeout dummy
scoreboard objectives add debug_tickspeed dummy
scoreboard objectives add settings_gapple dummy
scoreboard objectives add settings_spec dummy
scoreboard objectives add anim_timer dummy
scoreboard objectives add start_timer dummy
scoreboard objectives add debug_watcher dummy
# v THIS IS EXPERIMENTAL DO NOT TOUCH v
scoreboard objectives add autostart dummy
# ^ THIS IS EXPERIMENTAL DO NOT TOUCH ^

fill -1 0 1 1 2 -1 bedrock
fill 0 1 0 0 2 0 air
summon armor_stand host 0 1 0
tag @e[type=armor_stand,name=host] add host
scoreboard players set @e[type=armor_stand,tag=host] settings_healing 1
scoreboard players set @e[type=armor_stand,tag=host] settings_time 0
scoreboard players set @e[type=armor_stand,tag=host] settings_gapple 1
scoreboard players set @e[type=armor_stand,tag=host] settings_spec 1
scoreboard players set @e[tag=host] settings_state 1
#default settings
#tp to 0,0
scoreboard objectives setdisplay sidebar display
spreadplayers 0 0 1 2 @s
spawnpoint @a 0 100 0
setworldspawn 0 100 0
effect @s slow_falling 90 1 true
#game states: 1 = set up finish, 2 = started
gamerule naturalRegeneration false
gamerule doDaylightCycle false
gamerule doimmediateRespawn true
gamerule showcoordinates true
gamerule spawnRadius 1
gamerule sendCommandFeedback false
gamerule pvp false
time set noon
tellraw @s {"rawtext":[{"text":"§aSetup complete."}]}