execute if score @s end_timer matches 1 run title @s times 0 60 20
execute if score @s end_timer matches 1..3 run title @s title [{"text":"你","color":"green","bold":true}]
execute if score @s end_timer matches 4..6 run title @s title [{"text":"你已","color":"green","bold":true}]
execute if score @s end_timer matches 7..9 run title @s title [{"text":"你已经","color":"green","bold":true}]
execute if score @s end_timer matches 10..12 run title @s title [{"text":"你已经完","color":"green","bold":true}]
execute if score @s end_timer matches 13..15 run title @s title [{"text":"你已经完成","color":"green","bold":true}]
execute if score @s end_timer matches 16..18 run title @s title [{"text":"你已经完成了","color":"green","bold":true}]
execute if score @s end_timer matches 19..21 as @s[team=!race] run title @s title [{"text":"你已经完成了本","color":"green","bold":true}]
execute if score @s end_timer matches 21..24 as @s[team=!race] run title @s title [{"text":"你已经完成了本地","color":"green","bold":true}]
execute if score @s end_timer matches 25..65 as @s[team=!race] run title @s title [{"text":"你已经完成了本地图","color":"green","bold":true}]

#race
execute if score @s end_timer matches 19..21 as @s[team=race] run title @s title [{"text":"你已经完成了竞","color":"green","bold":true}]
execute if score @s end_timer matches 21..24 as @s[team=race] run title @s title [{"text":"你已经完成了竞赛","color":"green","bold":true}]

execute if score @s end_timer matches 150..150 run tag @s add rank
execute if score @s end_timer matches 150..150 run scoreboard players set @s end_timer 0