tellraw @a [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"selector":"@s","color":"green"},{"text": " has created a new race. (ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ")","color": "gray"}]
$tellraw @a [{"text": "       Enter ","color": "gray"},{"text": "/trigger join_race set $(invite_id)","color": "gray","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger join_race set $(invite_id)"},"hoverEvent": {"action": "show_text","contents":[{"text":"Click here!","color": "yellow","bold": true}]}},{"text": " to join.","color": "gray"}]
$tellraw @a [{"text": "       ","color": "gray"},{"text": "[","color": "white","clickEvent": {"action": "run_command","value": "/trigger join_race set $(invite_id)"},"hoverEvent": {"action": "show_text","contents":[{"text":"Click here!","color": "yellow","bold": true}]}},{"text": "Click here!","color": "gold","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger join_race set $(invite_id)"},"hoverEvent": {"action": "show_text","contents":[{"text":"Click here!","color": "yellow","bold": true}]}},{"text": "] ","color": "white","clickEvent": {"action": "run_command","value": "/trigger join_race set $(invite_id)"},"hoverEvent": {"action": "show_text","contents":[{"text":"Click here!","color": "yellow","bold": true}]}}]