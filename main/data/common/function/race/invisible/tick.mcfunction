execute as @s[tag=race_inv] as @a[team=race] if score @s raceID = @p raceID run effect give @s invisibility 1 1 true
execute as @s[tag=race_inv,tag=!race_inv_given] run tag @s add race_inv_given

execute as @s[tag=!race_inv,tag=race_inv_given] as @a[team=race] if score @s raceID = @p raceID run effect clear @s invisibility
execute as @s[tag=!race_inv,tag=race_inv_given] run tag @s remove race_inv_given