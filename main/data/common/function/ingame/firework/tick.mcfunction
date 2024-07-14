execute as @e at @s if score @s firework_timer matches 1.. unless score @s firework_delay matches 1.. run function common:ingame/firework/single/position/x_offset
execute as @e at @s if score @s firework_timer matches 1.. unless score @s firework_delay matches 1.. run function common:ingame/firework/set_delay

execute as @e if score @s firework_timer matches 1.. run scoreboard players remove @s firework_timer 1
execute as @e if score @s firework_delay matches 1.. run scoreboard players remove @s firework_delay 1

execute as @e[tag=firework_launcher] at @s run function common:ingame/firework/launcher/tick