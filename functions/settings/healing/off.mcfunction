execute @s[tag=host,scores={settings_state=1}] ~~~ scoreboard players set @s settings_healing 1
execute @s[tag=host,scores={settings_state=1}] ~~~ telllraw @s {"rawtext":[{"text":"Turned §eoff§f healing."}]}
tellraw @s[tag=!host] {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings."}]}
execute @s[tag=host,scores={settings_state=2}] ~~~ tellraw @s {"rawtext":[{"text":"§c§§lERROR§r Cannot change settings as the game has started."}]}