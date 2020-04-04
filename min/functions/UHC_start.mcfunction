execute @s[tag=hs,scores={var_alive=2..}] ~~~ scoreboard players set @a[tag=hs,scores={sst=1}] "sst" 2
execute @s[tag=hs,scores={var_alive=2..}] ~~~ spreadplayers 0 0 50 240 @a
execute @s[tag=hs,scores={var_alive=2..}] ~~~ xp 1l @a
execute @s[tag=hs,scores={var_alive=2..}] ~~~ title @a subtitle §cBecome the last survivor and win!
execute @s[tag=hs,scores={var_alive=2..}] ~~~ title @a title §cUltra Hardcore
execute @s[tag=hs,scores={var_alive=2..}] ~~~ effect @a slow_falling 90 1 true
execute @s[tag=hs,scores={var_alive=2..}] ~~~ effect @a blindness 5 1 true
execute @s[tag=hs,scores={var_alive=2..}] ~~~ execute @a ~~~ tp ~ 200 ~
execute @s[tag=hs,scores={var_alive=2..}] ~~~ replaceitem entity @a slot.armor.head 0 leather_helmet 1
execute @s[tag=hs,scores={var_alive=2..}] ~~~ replaceitem entity @a slot.armor.chest 0 leather_chestplate 1
execute @s[tag=hs,scores={var_alive=2..}] ~~~ replaceitem entity @a slot.armor.legs 0 leather_leggings 1
execute @s[tag=hs,scores={var_alive=2..}] ~~~ replaceitem entity @a slot.armor.feet 0 leather_boots 1
execute @s[tag=hs,scores={var_alive=2..}] ~~~ scoreboard players set @s sto 0
execute @s[tag=hs,scores={var_alive=2..,settings_time=0}] ~~~ scoreboard players set @s timer 12000
execute @s[tag=hs,scores={var_alive=2..,settings_time=1}] ~~~ scoreboard players set @s timer 36000
tellraw @s[tag=!hs] {"rawtext":[{"text":"§c§lERROR§r Unable to start the game."}]}
tellraw @s[tag=hs,scores={var_alive=1}] {"rawtext":[{"text":"§c§lERROR§r Cannot start the game if there is only one person."}]}