#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Random tp","color":"aqua"}
title @a[tag=play] subtitle {"text":"The cards have been reshuffled", "color":"gold"}
title @a[tag=play] title {"text":"Random tp", "color":"yellow"}
tellraw @a ["",{"text":"Random tp","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute if score 0 time_min matches 25 run spreadplayers 0 0 1 740 under 200 false @a[tag=play]
execute if score 0 time_min matches 30 run spreadplayers 0 0 1 490 under 200 false @a[tag=play]
execute if score 0 time_min matches 35 run spreadplayers 0 0 1 240 under 200 false @a[tag=play]
execute if score 0 time_min matches 40.. as @e[tag=Border] at @s run spreadplayers ~ ~ 0 1 under 200 false @a[tag=play]