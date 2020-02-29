execute @s[tag=host] ~~~ scoreboard players set @a[tag=host,scores={settings_state=1}] "settings_state" 2
execute @s[tag=host] ~~~ spreadplayers 0 0 50 240 @a
execute @s[tag=host] ~~~ xp 1l @a
execute @s[tag=host] ~~~ scoreboard objectives setdisplay sidebar display
execute @s[tag=host] ~~~ tellraw @a {"rawtext":[{"text":"§aThe UHC game has now started! Pvp will be enabled in 3 minutes."}]}
execute @s[tag=host] ~~~ title @a subtitle §cBecome the last survivor and win!
execute @s[tag=host] ~~~ title @a title §cUltra Hardcore
execute @s[tag=host] ~~~ effect @a slow_falling 90 1 true
execute @s[tag=host] ~~~ effect @a blindness 5 1 true
execute @s[tag=host] ~~~ execute @a ~~~ tp ~ 200 ~

tellraw @s[tag=!host] {"rawtext":[{"text":"§chis command can only be used by the host(person who used the setup command)."}]}
