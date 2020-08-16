execute @s[tag=hs,scores={sst=1}] ~~~ scoreboard objectives setdisplay sidebar disp
execute @s[tag=hs,scores={sst=1}] ~~~ tellraw @a {"rawtext":[{"text":"Turned §eon§f healing."}]}
tellraw @s[tag=!hs] {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings."}]}
execute @s[tag=hs,scores={sst=2}] ~~~ tellraw @s {"rawtext":[{"text":"§c§§lERROR§r Cannot change settings as the game has started."}]}