#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Glowing","color":"aqua"}
title @a[tag=play] subtitle {"text":"like stars", "color":"gold"}
title @a[tag=play] title {"text":"Glowing", "color":"yellow"}
tellraw @a ["",{"text":"Glowing","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
effect give @a[tag=play] glowing 300 255 true