#click delay
execute as @a if score @s click_delay matches 1.. run scoreboard players remove @s click_delay 1
execute as @a if score @s click_delay matches 0 run function common:click/reset

execute as @a[team=ingame] run function common:click/back_to_checkpoint
execute as @a[team=end] run function common:click/back_to_checkpoint
execute as @a[team=race] run function common:click/back_to_checkpoint

execute as @a[team=!race,team=!training_mode] run function common:click/new_race