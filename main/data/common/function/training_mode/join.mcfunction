title @s clear
title @s times 0 20 15
title @s title [""]
title @s subtitle [{"text": "Enabled training mode","bold": true,"color": "green"}]
function common:timer/timer/reset
tag @s add timer_display
tag @s remove timer_enable
tag @s add disable_flight
tag @s add training_mode

execute at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1