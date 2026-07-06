#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Cactus","color":"aqua"}
title @a[tag=play] subtitle {"text":"You spiky little boy", "color":"gold"}
title @a[tag=play] title {"text":"Epic personality", "color":"yellow"}
tellraw @a ["",{"text":"Cactus","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 30
scoreboard players set 0 event_remaining 4800