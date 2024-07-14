execute as @s[tag=disable_flight,tag=!flight_toggled] run function common:training_mode/flight/enable
execute as @s[tag=enable_flight,tag=!flight_toggled] run function common:training_mode/flight/disable
tag @s remove flight_toggled

playsound item.armor.equip_elytra master @s ~ ~ ~ 1 1
scoreboard players operation @s click_delay = #click_delay const