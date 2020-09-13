execute @s[tag=host,scores={settings_state=1}] ~~~ scoreboard objectives setdisplay sidebar display
execute @s[tag=host,scores={settings_state=1}] ~~~ tellraw @a {"rawtext":[{"text":"Turned §eon§f healing."}]}
tellraw @s[tag=!host] {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings: you are not the host."}]}
execute @s[tag=host,scores={settings_state=2}] ~~~ tellraw @s {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings: game in progress"}]}