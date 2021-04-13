execute @s[tag=host,scores={var_alive=2..}] ~~~ scoreboard players set @a[tag=host,scores={settings_state=1}] "settings_state" 2
execute @s[tag=host,scores={var_alive=2..}] ~~~ function UHC_modules/spreadplayers
execute @s[tag=host,scores={var_alive=2..}] ~~~ title @a actionbar Teleporting everyone...
execute @s[tag=host,scores={var_alive=2..}] ~~~ tellraw @a {"rawtext":[{"text":"§lGame started"}]}
execute @s[tag=host,scores={var_alive=2..}] ~~~ effect @a[tag=!spec] slow_falling 90 1 true
execute @s[tag=host,scores={var_alive=2..}] ~~~ execute @a[tag=!spec] ~~~ tp ~ 200 ~
execute @s[tag=host,scores={var_alive=2..}] ~~~ replaceitem entity @a[tag=!spec] slot.armor.head 0 leather_helmet 1
execute @s[tag=host,scores={var_alive=2..}] ~~~ replaceitem entity @a[tag=!spec] slot.armor.chest 0 leather_chestplate 1
execute @s[tag=host,scores={var_alive=2..}] ~~~ replaceitem entity @a[tag=!spec] slot.armor.legs 0 leather_leggings 1
execute @s[tag=host,scores={var_alive=2..}] ~~~ replaceitem entity @a[tag=!spec] slot.armor.feet 0 leather_boots 1
execute @s[tag=host,scores={var_alive=2..}] ~~~ scoreboard players set @s spec_timeout 0
execute @s[tag=host,scores={var_alive=2..,settings_time=0}] ~~~ scoreboard players set @s timer 12000
execute @s[tag=host,scores={var_alive=2..,settings_time=1}] ~~~ scoreboard players set @s timer 36000
tellraw @s[tag=!host] {"rawtext":[{"text":"§c§lERROR§r Unable to start the game: you are not the host or you have not yet executed /function UHC_setup."}]}
tellraw @s[tag=host,scores={var_alive=1}] {"rawtext":[{"text":"§c§lERROR§r Unable to start the game: Not enough players. At least two players are required to start."}]}
tellraw @s[tag=host,scores={settings_state=0}] {"rawtext":[{"text":"§e§lERROR§r Only one game is allowrd in each world. Create a new world instead."}]}