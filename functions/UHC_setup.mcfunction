#scoreboard setup
scoreboard objectives add display dummy "§lUHC"
scoreboard objectives add timer dummy
scoreboard objectives add spec_timeout dummy
scoreboard objectives add var_alive dummy
scoreboard objectives add debug_tickspeed dummy
scoreboard objectives add anim_timer dummy
scoreboard objectives add start_timer dummy
scoreboard objectives add debugger dummy
scoreboard objectives add despawn_timer dummy
scoreboard objectives add death dummy
scoreboard objectives add died dummy
scoreboard objectives add deathCount dummy
scoreboard objectives add settings_state dummy
scoreboard objectives add settings_healing dummy
scoreboard objectives add settings_time dummy
scoreboard objectives add settings_gapple dummy
scoreboard objectives add settings_spec dummy
scoreboard objectives add settings_autosmt dummy
scoreboard objectives add settings_enchant dummy
# v THIS IS EXPERIMENTAL DO NOT TOUCH v
scoreboard objectives add autostart dummy
# ^ THIS IS EXPERIMENTAL DO NOT TOUCH ^
#default settings
scoreboard players set @s settings_healing 1
scoreboard players set @s settings_time 1
scoreboard players set @s settings_gapple 1
scoreboard players set @s settings_spec 1
scoreboard players set @s settings_autosmt 1
scoreboard players set @s settings_enchant 0
scoreboard players set @s autostart 0
gamerule domobspawning false
#tp to 0,0
scoreboard objectives setdisplay sidebar display
spreadplayers 0 0 1 2 @s
tp @a @s

fill ~-8 ~8 ~-8 ~8 ~-8 ~8 minecraft:glass 0 replace minecraft:air
fill ~-8 ~8 ~-8 ~8 ~-8 ~8 minecraft:glass 0 replace minecraft:water
fill ~-5 ~5 ~-5 ~5 ~-5 ~5 minecraft:air 0 replace minecraft:glass

spawnpoint @a 0 100 0
setworldspawn 0 100 0
effect @s slow_falling 90 1 true
tag @s add host
#game states: 1 = set up finish, 2 = started
scoreboard players set @a[tag=host] settings_state 1
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
tellraw @s {"rawtext":[{"text":"§eTip: Use /function UHC_help/settings to see a list of available configs!"}]}