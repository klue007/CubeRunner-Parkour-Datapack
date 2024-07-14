execute store result score @s y_offset run random value 0..8

execute if score @s y_offset matches 0 positioned ~ ~2 ~ run function common:ingame/firework/single/position/z_offset
execute if score @s y_offset matches 1 positioned ~ ~3 ~ run function common:ingame/firework/single/position/z_offset
execute if score @s y_offset matches 2 positioned ~ ~4 ~ run function common:ingame/firework/single/position/z_offset
execute if score @s y_offset matches 3 positioned ~ ~5 ~ run function common:ingame/firework/single/position/z_offset
execute if score @s y_offset matches 4 positioned ~ ~6 ~ run function common:ingame/firework/single/position/z_offset
execute if score @s y_offset matches 5 positioned ~ ~7 ~ run function common:ingame/firework/single/position/z_offset
execute if score @s y_offset matches 6 positioned ~ ~8 ~ run function common:ingame/firework/single/position/z_offset
execute if score @s y_offset matches 7 positioned ~ ~9 ~ run function common:ingame/firework/single/position/z_offset
execute if score @s y_offset matches 8 positioned ~ ~10 ~ run function common:ingame/firework/single/position/z_offset