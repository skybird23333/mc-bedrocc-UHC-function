execute @s[tag=host,scores={var_alive=2..}] ~~~ scoreboard players set @a[tag=host,scores={settings_state=1}] "settings_state" 2
execute @s[tag=host,scores={var_alive=2..}] ~~~ spreadplayers 0 0 50 240 @a
execute @s[tag=host,scores={var_alive=2..}] ~~~ xp 1l @a
execute @s[tag=host,scores={var_alive=2..}] ~~~ title @a subtitle §cBecome the last survivor and win!
execute @s[tag=host,scores={var_alive=2..}] ~~~ title @a title §cUltra Hardcore
execute @s[tag=host,scores={var_alive=2..}] ~~~ effect @a slow_falling 90 1 true
execute @s[tag=host,scores={var_alive=2..}] ~~~ effect @a blindness 5 1 true
execute @s[tag=host,scores={var_alive=2..}] ~~~ execute @a ~~~ tp ~ 200 ~
execute @s[tag=host,scores={var_alive=2..}] ~~~ replaceitem entity @a slot.armor.head 0 leather_helmet 1
execute @s[tag=host,scores={var_alive=2..}] ~~~ replaceitem entity @a slot.armor.chest 0 leather_chestplate 1
execute @s[tag=host,scores={var_alive=2..}] ~~~ replaceitem entity @a slot.armor.legs 0 leather_leggings 1
execute @s[tag=host,scores={var_alive=2..}] ~~~ replaceitem entity @a slot.armor.feet 0 leather_boots 1
execute @s[tag=host,scores={var_alive=2..}] ~~~ give @a wooden_sword 1 0
execute @s[tag=host,scores={var_alive=2..}] ~~~ give @a bandage 5 0
execute @s[tag=host,scores={var_alive=2..}] ~~~ give @a pills 1 0
execute @s[tag=host,scores={var_alive=2..}] ~~~ scoreboard players set @s spec_timeout 0
execute @s[tag=host,scores={var_alive=2..}] ~~~ scoreboard players set @s day_timer 0
execute @s[tag=host,scores={var_alive=2..,settings_time=1}] ~~~ scoreboard players set @s timer 36000
tellraw @s[tag=!host] {"rawtext":[{"text":"§c§lERROR§r Unable to start the game."}]}
tellraw @s[tag=host,scores={var_alive=1}] {"rawtext":[{"text":"§c§lERROR§r Cannot start the game if there is only one person."}]}