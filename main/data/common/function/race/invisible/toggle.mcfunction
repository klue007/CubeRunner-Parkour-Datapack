execute if entity @s[tag=race_inv,tag=!race_inv_toggled] run function common:race/invisible/remove

execute if entity @s[tag=!race_inv,tag=!race_inv_toggled] run function common:race/invisible/add

execute if entity @s[tag=race_inv_toggled] run tag @s remove race_inv_toggled
scoreboard players operation @s click_delay = #click_delay const