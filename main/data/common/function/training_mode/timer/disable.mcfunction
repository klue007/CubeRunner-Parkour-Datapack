function common:timer/timer/stop
tag @s add timer_toggled
tag @s remove timer_enable

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"tm_timer":true}] run item modify entity @s weapon.mainhand common:training_mode/glint/disable

execute if items entity @s weapon.offhand *[minecraft:custom_data~{"tm_timer":true}] run item modify entity @s weapon.offhand common:training_mode/glint/disable