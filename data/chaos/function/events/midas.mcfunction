#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Midas","color":"aqua"}
title @a[tag=play] subtitle {"text":"everything iron you touch is gold", "color":"gold"}
title @a[tag=play] title {"text":"Midas", "color":"yellow"}
tellraw @a ["",{"text":"Midas","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 7
scoreboard players set 0 event_remaining 3600