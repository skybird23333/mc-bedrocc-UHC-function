execute @s[tag=hs,scores={sst=1}] ~~~ scoreboard players set @s settings_time 1
execute @s[tag=hs,scores={sst=1}] ~~~ tellraw @a {"rawtext":[{"text":"Changed game mode to §eclassic§f."}]}
tellraw @s[tag=!hs] {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings."}]}
execute @s[tag=hs,scores={sst=2}] ~~~ tellraw @s {"rawtext":[{"text":"§c§lERROR§r Settings cannot be changed while in-game."}]}