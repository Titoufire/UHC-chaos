#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Dessicated","color":"aqua"}
title @a[tag=play] subtitle {"text":"Get wet", "color":"gold"}
title @a[tag=play] title {"text":"Dessicated", "color":"yellow"}
tellraw @a ["",{"text":"Dessicated","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 8
scoreboard players set 0 event_remaining 4800
tag @a[tag=play] remove Hydrated
effect give @a[tag=play] poison infinite