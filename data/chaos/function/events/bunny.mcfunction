#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Bunny","color":"aqua"}
title @a[tag=play] subtitle {"text":"On steroïds", "color":"gold"}
title @a[tag=play] title {"text":"Bunny", "color":"yellow"}
tellraw @a ["",{"text":"Bunny","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
effect give @a[tag=play] jump_boost 120 44 true