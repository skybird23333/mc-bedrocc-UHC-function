execute @s[tag=host,scores={settings_state=1}] ~~~ scoreboard players set @s settings_gapple 1
execute @s[tag=host,scores={settings_state=1}] ~~~ tellraw @a {"rawtext":[{"text":"Turned §eon§f dropping golden apples."}]}
tellraw @s[tag=!host] {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings: you are not the host."}]}
execute @s[tag=host,scores={settings_state=2}] ~~~ tellraw @s {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings: game in progress"}]}