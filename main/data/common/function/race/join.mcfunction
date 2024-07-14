#already in a race
execute if entity @s[team=race] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "你已加入一场竞赛. (ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ")","color": "gray"}]

#find for race
execute unless entity @s[team=race] as @a[tag=race_owner] if score @s raceID = @p join_race run tag @p add race_found

#did not found
execute unless entity @s[team=race] unless entity @s[tag=race_found] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "未找到该竞赛. 请确认输入的竞赛信息(ID:","color": "gray"},{"score": {"objective":"join_race","name":"@s"},"color": "gold"},{"text": ")是否正确.","color": "gray"}]

#normal
execute if entity @s[tag=race_found] run scoreboard players operation @s raceID = @s join_race
execute if entity @s[tag=race_found] run scoreboard players reset @s race_rank
execute if entity @s[tag=race_found] run function common:timer/timer/reset
execute if entity @s[tag=race_found] run clear @s
execute if entity @s[tag=race_found] run team join race @s
execute if entity @s[tag=race_found] as @a[team=race] if score @s raceID = @p raceID run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"selector":"@p","color":"green"},{"text": "加入竞赛.","color": "gray"}]
execute if entity @s[tag=race_found] run tag @s remove race_found