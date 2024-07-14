scoreboard players operation @s firework_delay = #firework_delay const

execute store result score @s firework_random run random value -1..1

scoreboard players operation @s firework_delay += @s firework_random