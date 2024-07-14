
execute store result score @s firework_random run random value 1..100

# 5% twinkle chance
execute if score @s firework_random matches 1..5 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].has_twinkle set value true

# 10% trail chance
execute if score @s firework_random matches 6..15 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].has_trail set value true

execute store result score @s firework_random run random value 1..100

# 40% burst
# 15% large ball
execute if score @s firework_random matches 40..54 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].shape set value "large_ball"

# 25% small ball
execute if score @s firework_random matches 55..79 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].shape set value "small_ball"

# 19% star
execute if score @s firework_random matches 80..98 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].shape set value "star"

# 1% creeper chance
execute if score @s firework_random matches 100 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].shape set value "creeper"


# Colors
execute store result score @s firework_random run random value 1..23

execute if score @s firework_random matches 1 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 16711680
execute if score @s firework_random matches 2 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 16728064
execute if score @s firework_random matches 3 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 16744448
execute if score @s firework_random matches 4 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 16760576
execute if score @s firework_random matches 5 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 16776960
execute if score @s firework_random matches 6 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 12582656
execute if score @s firework_random matches 7 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 8453888
execute if score @s firework_random matches 8 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 4259584
execute if score @s firework_random matches 9 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 65280
execute if score @s firework_random matches 10 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 65344
execute if score @s firework_random matches 11 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 65408
execute if score @s firework_random matches 12 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 65471
execute if score @s firework_random matches 13 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 65535
execute if score @s firework_random matches 14 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 49151
execute if score @s firework_random matches 15 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 33023
execute if score @s firework_random matches 16 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 16639
execute if score @s firework_random matches 17 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 255
execute if score @s firework_random matches 18 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 4194559
execute if score @s firework_random matches 19 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 8388863
execute if score @s firework_random matches 20 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 12517631
execute if score @s firework_random matches 21 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 16711935
execute if score @s firework_random matches 22 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 16711871
execute if score @s firework_random matches 23 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] set value 16711808

execute store result score @s firework_random run random value 1..23

execute if score @s firework_random matches 1 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 16711680
execute if score @s firework_random matches 2 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 16728064
execute if score @s firework_random matches 3 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 16744448
execute if score @s firework_random matches 4 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 16760576
execute if score @s firework_random matches 5 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 16776960
execute if score @s firework_random matches 6 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 12582656
execute if score @s firework_random matches 7 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 8453888
execute if score @s firework_random matches 8 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 4259584
execute if score @s firework_random matches 9 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 65280
execute if score @s firework_random matches 10 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 65344
execute if score @s firework_random matches 11 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 65408
execute if score @s firework_random matches 12 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 65471
execute if score @s firework_random matches 13 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 65535
execute if score @s firework_random matches 14 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 49151
execute if score @s firework_random matches 15 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 33023
execute if score @s firework_random matches 16 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 16639
execute if score @s firework_random matches 17 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 255
execute if score @s firework_random matches 18 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 4194559
execute if score @s firework_random matches 19 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 8388863
execute if score @s firework_random matches 20 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 12517631
execute if score @s firework_random matches 21 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 16711935
execute if score @s firework_random matches 22 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 16711871
execute if score @s firework_random matches 23 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] set value 16711808