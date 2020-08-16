execute @s[tag=hs,scores={sst=1}] ~~~ scoreboard players set @s settings_healing 1
execute @s[tag=hs,scores={sst=1}] ~~~ tellraw @a {"rawtext":[{"text":"Turned §eoff§f healing."}]}
tellraw @s[tag=!hs] {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings."}]}
execute @s[tag=hs,scores={sst=2}] ~~~ tellraw @s {"rawtext":[{"text":"§c§§lERROR§r Cannot change settings as the game has started."}]}