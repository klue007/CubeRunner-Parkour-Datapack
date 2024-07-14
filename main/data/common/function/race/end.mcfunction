function common:timer/timer/stop

function common:rank/get_rank

playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 9999 1

#set race rank
execute as @a[tag=race_owner] if score @s raceID = @p raceID run scoreboard players operation @p race_rank = @s race_rank_glb
execute as @a[tag=race_owner] if score @s raceID = @p raceID run scoreboard players add @s race_rank_glb 1

#public text
execute as @a[team=race] if score @s raceID = @p raceID run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text":"第","color":"gray"},{"score":{"objective":"race_rank","name":"@p"},"color": "gold"},{"text":"名产生: ","color":"gray"},{"selector":"@p","color":"green"},{"text":"已完成竞赛.","color":"gray"}]
execute as @a[team=race] if score @s raceID = @p raceID run tellraw @s [{"text":"       用时","color":"gray"},{"score":{"objective":"hour","name":"@p"},"color":"gold"},{"text":"时","color":"gold"},{"score":{"objective":"min","name":"@p"},"color":"gold"},{"text":"分","color":"gold"},{"score":{"objective":"sec","name":"@p"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"dec","name":"@p"},"color":"gold"},{"text":"秒","color":"gold"}]

tag @s add race_finish
scoreboard players set @s end_timer 1
tag @s remove end