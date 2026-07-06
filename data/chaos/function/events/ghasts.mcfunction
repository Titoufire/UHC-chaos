#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Ghasts","color":"aqua"}
title @a[tag=play] subtitle {"text":"But they're not so happy", "color":"gold"}
title @a[tag=play] title {"text":"Ghasts", "color":"yellow"}
tellraw @a ["",{"text":"Ghasts","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute as @a[tag=play] at @s run summon ghast ~ ~6 ~