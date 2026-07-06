#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"House","color":"aqua"}
title @a[tag=play] subtitle {"text":"Here's your very own structure", "color":"gold"}
title @a[tag=play] title {"text":"House", "color":"yellow"}
tellraw @a ["",{"text":"House","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute as @a[tag=play] store result score @s event_house run random value 1..14

execute as @a[scores={event_house=1}] at @s run place structure minecraft:bastion_remnant
execute as @a[scores={event_house=2}] at @s run place structure minecraft:desert_pyramid
execute as @a[scores={event_house=3}] at @s run place structure minecraft:end_city
execute as @a[scores={event_house=4}] at @s run place structure minecraft:fortress
execute as @a[scores={event_house=5}] at @s run place structure minecraft:igloo
execute as @a[scores={event_house=6}] at @s run place structure minecraft:jungle_pyramid
execute as @a[scores={event_house=7}] at @s run place structure minecraft:mansion
execute as @a[scores={event_house=8}] at @s run place structure minecraft:nether_fossil
execute as @a[scores={event_house=9}] at @s run place structure minecraft:ocean_ruin_cold
execute as @a[scores={event_house=10}] at @s run place structure minecraft:pillager_outpost
execute as @a[scores={event_house=11}] at @s run place structure minecraft:ruined_portal
execute as @a[scores={event_house=12}] at @s run place structure minecraft:shipwreck_beached
execute as @a[scores={event_house=13}] at @s run place structure minecraft:swamp_hut
execute as @a[scores={event_house=14}] at @s run place structure minecraft:village_plains

scoreboard players set @a event_house 0