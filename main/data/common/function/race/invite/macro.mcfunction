tellraw @a [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"selector":"@s","color":"green"},{"text": "创建了一个新的竞赛. (ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ")","color": "gray"}]
$tellraw @a [{"text": "       输入 ","color": "gray"},{"text": "/trigger join_race set $(invite_id)","color": "gray","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger join_race set $(invite_id)"},"hoverEvent": {"action": "show_text","contents":[{"text":"点此加入!","color": "yellow","bold": true}]}},{"text": " 以加入.","color": "gray"}]
$tellraw @a [{"text": "       ","color": "gray"},{"text": "[","color": "white","clickEvent": {"action": "run_command","value": "/trigger join_race set $(invite_id)"},"hoverEvent": {"action": "show_text","contents":[{"text":"点此加入!","color": "yellow","bold": true}]}},{"text": "点此加入","color": "gold","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger join_race set $(invite_id)"},"hoverEvent": {"action": "show_text","contents":[{"text":"点此加入!","color": "yellow","bold": true}]}},{"text": "] ","color": "white","clickEvent": {"action": "run_command","value": "/trigger join_race set $(invite_id)"},"hoverEvent": {"action": "show_text","contents":[{"text":"点此加入!","color": "yellow","bold": true}]}}]