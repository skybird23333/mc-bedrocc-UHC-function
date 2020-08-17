execute @a[tag=host,scores={timer=0..,settings_state=2,spec_timeout=..1}] ~~~ tag @a remove spec
execute @a[tag=host,scores={timer=0..,settings_state=2,spec_timeout=..1}] ~~~ tag @r[tag=!dead] add spec
execute @a[tag=host,scores={timer=0,settings_state=2}] ~~~ tp @a[tag=dead] 0 120 0 0 90
execute @a[tag=host,scores={timer=0,settings_state=2}] ~~~ tp @a[tag=spec] 0 120 0 0 90
