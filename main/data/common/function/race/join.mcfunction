#already in a race
execute if entity @s[team=race] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "You've already joined a race. (ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ")","color": "gray"}]

#find for race
execute unless entity @s[team=race] as @a[tag=race_owner,tag=race_prep] if score @s raceID = @p join_race run tag @p add race_found
execute unless entity @s[team=race] as @a[tag=race_owner,tag=!race_prep] if score @s raceID = @p join_race run tag @p add race_has_started

#has started
execute unless entity @s[team=race] if entity @s[tag=race_has_started] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "The race is ongoing (ID:","color": "gray"},{"score": {"objective":"join_race","name":"@s"},"color": "gold"},{"text": ")","color": "gray"}]

#did not found
execute unless entity @s[team=race] unless entity @s[tag=race_found] unless entity @s[tag=race_has_started] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "The race was not found. Please check if the entered information (ID:","color": "gray"},{"score": {"objective":"join_race","name":"@s"},"color": "gold"},{"text": ") is correct.","color": "gray"}]

#normal
execute if entity @s[tag=race_found] run scoreboard players operation @s raceID = @s join_race
execute if entity @s[tag=race_found] run scoreboard players reset @s race_rank
execute if entity @s[tag=race_found] run function common:timer/timer/reset
execute if entity @s[tag=race_found] run effect clear @s
execute if entity @s[tag=race_found] run clear @s
execute if entity @s[tag=race_found] run team join race @s
execute if entity @s[tag=race_found] as @a[team=race] if score @s raceID = @p raceID run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"selector":"@p","color":"green"},{"text": " has joined the race.","color": "gray"}]
execute if entity @s[tag=race_found] run tag @s remove race_found
execute if entity @s[tag=race_has_started] run tag @s remove race_has_started