execute @s[tag=host] ~~~ scoreboard players set @a[tag=host,scores={settings_state=1}] "settings_state" 2
execute @s[tag=host] ~~~ spreadplayers 0 0 50 240 @a
execute @s[tag=host] ~~~ xp 1l @a
execute @s[tag=host,scores={settings_scoreboard=1}] ~~~ scoreboard objectives setdisplay sidebar display
execute @s[tag=host] ~~~ title @a subtitle §cBecome the last survivor and win!
execute @s[tag=host] ~~~ title @a title §cUltra Hardcore
execute @s[tag=host] ~~~ effect @a slow_falling 90 1 true
execute @s[tag=host] ~~~ effect @a blindness 5 1 true
execute @s[tag=host] ~~~ execute @a ~~~ tp ~ 200 ~
execute @s[tag=host] ~~~ replaceitem entity @a slot.armor.head 0 leather_helmet 1
execute @s[tag=host] ~~~ replaceitem entity @a slot.armor.chest 0 leather_chestplate 1
execute @s[tag=host] ~~~ replaceitem entity @a slot.armor.legs 0 leather_leggings 1
execute @s[tag=host] ~~~ replaceitem entity @a slot.armor.feet 0 leather_boots 1
tellraw @s[tag=!host] {"rawtext":[{"text":"§c§§lERROR§r Unable to start the game."}]}
