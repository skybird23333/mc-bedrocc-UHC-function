tellraw @a[tag=eventLister,tag=host] {"rawtext":[{"text":"spectate is run"}]}
execute @s[tag=host,scores={timer=0..,settings_state=2,spec_timeout=..1}] ~~~ tag @a remove spec
execute @s[tag=host,scores={timer=0..,settings_state=2,spec_timeout=..1}] ~~~ tag @r[tag=!dead,tag=!spec] add spec
execute @s[tag=host,scores={timer=0..,settings_state=2,spec_timeout=..1}] ~~~ execute @a[tag=dead,tag=spec] ~~~ tag @a remove spec
execute @s[tag=host,scores={timer=0..,settings_state=2,spec_timeout=..1}] ~~~ execute @a[tag=dead,tag=spec] ~~~ tag @r[tag=!dead,tag=!spec] add spec
execute @s[tag=host,scores={timer=..0,settings_state=2}] ~~~ tp @a[tag=dead] 0 120 0 0 90
