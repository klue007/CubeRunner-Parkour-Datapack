## Position when join
tp @s ~ ~ ~
execute at @s run spawnpoint @s ~ ~ ~ ~
gamemode adventure @s
execute unless score @s pb matches 1.. run scoreboard players set @s pb 2147483647
execute unless score @s ID matches 10000000..99999999 at @s run function common:set_id
team join ingame @s
tag @s add joined