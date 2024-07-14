## Position when join
tp @s 4 67 73
spawnpoint @s ~ ~ ~ ~
gamemode adventure @s
execute unless score @s pb matches 1.. run scoreboard players set @s pb 2147483647
execute unless score @s ID matches 10000000..99999999 at @s run function common:set_id
team join ingame @s
tag @s add joined