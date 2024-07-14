tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "比赛信息:","color": "gray"}]
tellraw @s [{"text": "       比赛ID:","color": "gray"},{"score":{"objective": "raceID","name":"@s"},"color": "gold"}]
tellraw @s [{"text": "       比赛创建者:","color": "gray"},{"selector":"@s","color": "green"}]
execute if entity @s[tag=race_prep] run tellraw @s [{"text": "       比赛状态:","color": "gray"},{"text": "准备中","color": "gold"}]
execute if entity @s[tag=race_on] run tellraw @s [{"text": "       比赛状态:","color": "gray"},{"text": "进行中","color": "green"}]
execute if entity @s[tag=race_end] run tellraw @s [{"text": "       比赛状态:","color": "gray"},{"text": "已完赛","color": "red"}]
tellraw @s ""