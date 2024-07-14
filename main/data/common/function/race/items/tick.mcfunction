function common:race/items/hotbar

execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"race_info":true}}}]}] run function common:race/show_info
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"race_info":true}}}]}] run item replace entity @s weapon.offhand with air