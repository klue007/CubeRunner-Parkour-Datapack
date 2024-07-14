function common:timer/timer/stop

function common:rank/get_rank

playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 9999 1

#public text
tellraw @a [{"text":"恭喜","color":"gray"},{"selector":"@s","color":"gold"},{"text":"完成了本地图","color":"gray"}]
tellraw @a [{"text":"用时","color":"gray"},{"score":{"objective":"hour","name":"@s"},"color":"gold"},{"text":"时","color":"gold"},{"score":{"objective":"min","name":"@s"},"color":"gold"},{"text":"分","color":"gold"},{"score":{"objective":"sec","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"dec","name":"@s"},"color":"gold"},{"text":"秒","color":"gold"}]

#pb
function common:pb/get_pb

scoreboard players set @s end_timer 1
tag @s remove end
team join end @s