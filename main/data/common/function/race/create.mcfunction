scoreboard players operation @s click_delay = #click_delay const

#joined
execute if entity @s[team=race,tag=!race_owner] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "你已经加入了一个竞赛(ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ").","color": "gray"}]

#exised
execute if entity @s[tag=race_owner] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "你已经创建了一个竞赛. (ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ")","color": "gray"}]


#normal

#set raceID to playerID
execute if entity @s[tag=!race_owner,team=!race] run scoreboard players operation @s raceID = @s ID

#set race stage to preparing
execute if entity @s[tag=!race_owner,team=!race] run tag @s add race_prep
execute if entity @s[tag=!race_owner,team=!race] run tellraw @a [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"selector":"@s","color":"green"},{"text": "创建了一个新的竞赛. (ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ")","color": "gray"}]
execute if entity @s[tag=!race_owner,team=!race] run tellraw @a [{"text": "       输入/trigger join_race set ","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gray"},{"text": "以加入.","color": "gray"}]

#set tag
execute if entity @s[tag=!race_owner,team=!race] run tag @s add jointeam
execute if entity @s[tag=jointeam] run tag @s add race_owner
execute if entity @s[tag=jointeam] run team join race @s
execute if entity @s[tag=jointeam] run clear @s
execute if entity @s[tag=jointeam] run scoreboard players reset @s race_rank
execute if entity @s[tag=jointeam] run function common:timer/timer/reset
execute if entity @s[tag=jointeam] run tag @s remove jointeam