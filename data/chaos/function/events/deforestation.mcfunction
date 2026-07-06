#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Deforestation","color":"aqua"}
title @a[tag=play] subtitle {"text":"Fuck trees, I love stairs", "color":"gold"}
title @a[tag=play] title {"text":"Deforestation", "color":"yellow"}
tellraw @a ["",{"text":"Deforestation","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
give @a[tag=play] oak_stairs 576