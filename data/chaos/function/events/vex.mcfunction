#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"A vex !","color":"aqua"}
title @a[tag=play] subtitle {"text":"Where the fuck is it ?!", "color":"gold"}
title @a[tag=play] title {"text":"A vex !", "color":"yellow"}
tellraw @a ["",{"text":"A vex !","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute as @a[tag=play] at @s run summon vex ~ ~ ~
execute as @a[tag=play] at @s run data modify entity @n[type=vex] leash.UUID set from entity @s UUID