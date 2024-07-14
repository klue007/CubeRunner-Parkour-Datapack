execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"race_start":true}}}]}] run item replace entity @s hotbar.1 with turtle_scute[item_name='[{"text":"Start race","color":"green","bold": true,"italic": false}]',lore=['[{"text": "Right click","color": "gold","italic": false},{"text": " to start the race","color": "gray","italic": false}]'],custom_data={"race_start":true},hide_additional_tooltip={},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647}]

execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"race_stop":true}}}]}] run item replace entity @s hotbar.2 with red_dye[item_name='[{"text":"End race","color":"red","bold": true,"italic": false}]',hide_additional_tooltip={},lore=['[{"text": "Right click","color": "gold","italic": false},{"text": " to end the race","color": "gray","italic": false}]'],custom_data={"race_stop":true},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647}]

execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"race_inv":true}},id:"minecraft:potion"}]}] if entity @s[tag=!race_inv] run item replace entity @s hotbar.6 with potion[item_name='[{"text":"Enable ","color":"green","bold": true,"italic": false},{"text":"Player Invisibility","color":"white","bold": true,"italic": false}]',hide_additional_tooltip={},lore=['[{"text": "Right click","color": "gold","italic": false},{"text": " to make players","color": "gray","italic": false}]','{"text": "in your race invisible","color": "gray","italic": false}','{"text": ""}','{"text": "This prevents the view from","color": "gray","italic": false}','{"text": "being obstructed by other","color": "gray","italic": false}','{"text": "players during a race","color": "gray","italic": false}'],custom_data={"race_inv":true},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647},potion_contents={custom_color:16777215}]

execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"race_inv":true}},id:"minecraft:dragon_breath"}]}] if entity @s[tag=race_inv] run item replace entity @s hotbar.6 with dragon_breath[item_name='[{"text":"Disable ","color":"red","bold": true,"italic": false},{"text":"Player Invisibility","color":"white","bold": true,"italic": false}]',hide_additional_tooltip={},lore=['[{"text": "Right click","color": "gold","italic": false},{"text": " to make players","color": "gray","italic": false}]','{"text": "in your race invisible","color": "gray","italic": false}','{"text": ""}','{"text": "This prevents the view from","color": "gray","italic": false}','{"text": "being obstructed by other","color": "gray","italic": false}','{"text": "players during a race","color": "gray","italic": false}'],custom_data={"race_inv":true},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647},enchantment_glint_override=true]

execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"race_info":true}}}]}] run item replace entity @s hotbar.7 with book[item_name='[{"text":"Show rank","color":"yellow","bold": true,"italic": false}]',hide_additional_tooltip={},lore=['[{"text": "Right click","color": "gold","italic": false},{"text": " to announce","color": "gray","italic": false}]','{"text": "the rank of your race","color": "gray","italic": false}','{"text": ""}','[{"text": "Switch to offhand","color": "gold","italic": false},{"text": " to check","color": "gray","italic": false}]','{"text": "the info of your race","color": "gray","italic": false}'],custom_data={"race_info":true},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647}]