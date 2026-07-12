clear @s
tag @s remove dead
tag @s add play
gamemode survival @s
effect give @s resistance 2 5 false
effect give @s slow_falling 2 0 false
effect give @s instant_health 2 255 false
summon marker ~ ~ ~ {Tags:["Reviving"]}
execute store result entity @n[tag=Reviving] Pos[0] double 1 run scoreboard players get @s death_x
execute store result entity @n[tag=Reviving] Pos[1] double 1 run scoreboard players get @s death_y
execute store result entity @n[tag=Reviving] Pos[2] double 1 run scoreboard players get @s death_z
execute at @n[tag=Reviving] run spreadplayers ~ ~ 0 3 under 199 false @s
kill @e[tag=Reviving]
scoreboard players set @s death_time 0
give @s iron_sword
give @s iron_pickaxe
effect give @s resistance 10 4 true
tag @s remove revive
