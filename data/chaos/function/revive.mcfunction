clear @s
tag @s remove dead
tag @s add play
gamemode survival @s
effect give @s resistance 2 5 false
effect give @s slow_falling 2 0 false
effect give @s instant_health 2 255 false
spreadplayers ~ ~ 0 3 under 190 false @s
scoreboard players set @s death_time 0
give @s iron_sword
give @s iron_pickaxe
tag @s remove revive
