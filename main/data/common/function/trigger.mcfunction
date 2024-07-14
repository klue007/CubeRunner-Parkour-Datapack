scoreboard players enable @s show_pb
execute if score @s show_pb matches 1.. if score @s pb matches 2147483647 run tellraw @s [{"text": "你还没有任何记录.","color": "gray"}]
execute if score @s show_pb matches 1.. unless score @s pb matches 2147483647 run tellraw @s [{"text": "你的个人最佳记录为: ","color": "gray"},{"score":{"objective":"pb_hour","name":"@s"},"color":"gold"},{"text":"时","color":"gold"},{"score":{"objective":"pb_min","name":"@s"},"color":"gold"},{"text":"分","color":"gold"},{"score":{"objective":"pb_sec","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"pb_dec","name":"@s"},"color":"gold"},{"text":"秒.","color":"gold"}]
execute unless score @s show_pb matches 0 run scoreboard players set @s show_pb 0


scoreboard players enable @s reset_pb
execute if score @s reset_pb matches 1.. run tellraw @s [{"text": "个人最佳记录已重置.","color": "gray"}]
execute if score @s reset_pb matches 1.. run scoreboard players set @s pb 2147483647
execute unless score @s reset_pb matches 0 run scoreboard players set @s reset_pb 0


scoreboard players enable @a restart
#normal
## Restart Position
execute if score @s restart matches 1.. as @s[team=!race] run tp @s ~ ~ ~
execute if score @s restart matches 1.. as @s[team=!race] run gamemode adventure @s
execute if score @s restart matches 1.. as @s[team=!race] run effect clear @s
execute if score @s restart matches 1.. as @s[team=!race] at @s run spawnpoint @s ~ ~ ~
execute if score @s restart matches 1.. as @s[team=!race,team=!training_mode] run team join ingame @s
execute if score @s restart matches 1.. as @s[team=!race,team=!training_mode] run tag @s remove end
execute if score @s restart matches 1.. as @s[team=!race,team=!training_mode] run function common:timer/timer/reset
#race
execute if score @s restart matches 1.. as @s[team=race] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "竞赛中无法使用重新开始.","color": "gray"}]
execute unless score @s restart matches 0 run scoreboard players set @s restart 0

scoreboard players enable @a lobby
#normal
execute if score @s lobby matches 1.. as @s[team=!race] run function common:back_to_lobby
#race
execute if score @s lobby matches 1.. as @s[team=race] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "竞赛中无法使用返回大厅.","color": "gray"}]
execute unless score @s lobby matches 0 run scoreboard players set @s lobby 0


scoreboard players enable @a training_mode
#normal
execute as @a[scores={training_mode=1..},team=training_mode] run function common:training_mode/team_leave
execute as @a[scores={training_mode=1..},team=!training_mode,team=!race] run function common:training_mode/team_join
#race
execute as @a[scores={training_mode=1..},team=race] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "竞赛中无法使用练习模式.","color": "gray"}]
execute unless score @s training_mode matches 0 run scoreboard players set @s training_mode 0


scoreboard players enable @s ranks
execute if score @s ranks matches 1.. run function common:rank/show_ranks
execute unless score @s ranks matches 0 run scoreboard players set @s ranks 0


function common:race/trigger