function common:timer/timer/reset
team join ingame @s[team=!training_mode]
playsound entity.enderman.teleport master @s ~ ~ ~ 9999 1
clear @s
effect clear @s
effect give @s resistance 1 5 true
execute at @s run spawnpoint @s ~ ~ ~ ~

## Lobby Position
tp @s ~ ~ ~