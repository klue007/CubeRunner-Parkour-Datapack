function common:race/items/hotbar

execute if items entity @s weapon.offhand *[custom_data={"race_info":true}] run function common:race/show_info
execute if items entity @s weapon.offhand *[custom_data={"race_info":true}] run item replace entity @s weapon.offhand with air