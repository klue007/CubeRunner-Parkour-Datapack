scoreboard players operation @s click_delay = #click_delay const

#already started
execute if entity @s[tag=race_owner,tag=race_on] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "该竞赛正在进行中.","color": "gray"}]

#already finished
execute if entity @s[tag=race_owner,tag=race_end] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "该竞赛已经结束.","color": "gray"}]

#if another race is there
execute if entity @s[tag=race_owner,tag=race_prep] if entity @a[tag=race_owner,tag=race_on,x=123,y=456,z=789,dx=0,dy=0,dz=0] run tellraw @s [{"text": "[","color": "white"},{"text": "竞赛","color": "green"},{"text": "] ","color": "white"},{"text": "另一场比赛正在开始位置，请等待...","color": "gray"}]

#normal
## Race Position
execute if entity @s[tag=race_owner,tag=race_prep] unless entity @a[tag=race_owner,tag=race_on,x=0,y=0,z=0,dx=0,dy=0,dz=0] run scoreboard players set @s race_timer 0
execute if entity @s[tag=race_owner,tag=race_prep] unless entity @a[tag=race_owner,tag=race_on,x=0,y=0,z=0,dx=0,dy=0,dz=0] run tag @s add race_on
execute if entity @s[tag=race_owner,tag=race_prep] unless entity @a[tag=race_owner,tag=race_on,x=0,y=0,z=0,dx=0,dy=0,dz=0] run tag @s remove race_prep