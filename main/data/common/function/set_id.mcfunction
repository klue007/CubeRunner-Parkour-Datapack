execute store result score @s ID run random value 10000000..99999999

tag @s add id_check
execute as @a[tag=!id_check] if score @s ID = @p ID as @p run function common:set_id
tag @s remove id_check