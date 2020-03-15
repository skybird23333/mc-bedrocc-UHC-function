execute @s[tag=host,scores={settings_state=1}] ~~~ scoreboard players set @s settings_time 1
execute @s[tag=host,scores={settings_state=1}] ~~~ tellraw @a {"rawtext":[{"text":"Changed game time to §elong§f."}]}
execute @s[tag=host,scores={settings_state=1}] ~~~ tellraw @a {"rawtext":[{"text":"§lTIME EVENTS"}]}
execute @s[tag=host,scores={settings_state=1}] ~~~ tellraw @a {"rawtext":[{"text":"§e10 Minutes§f - pvp off"}]}
execute @s[tag=host,scores={settings_state=1}] ~~~ tellraw @a {"rawtext":[{"text":"§e+50 Minutes§f - pvp on"}]}
execute @s[tag=host,scores={settings_state=1}] ~~~ tellraw @a {"rawtext":[{"text":"§eTimer end§f - deathmatch"}]}
tellraw @s[tag=!host] {"rawtext":[{"text":"§c§§lERROR§r Unable to change the settings."}]}
execute @s[tag=host,scores={settings_state=2}] ~~~ tellraw @s {"rawtext":[{"text":"§c§lERROR§r Settings cannot be changed while in-game."}]}