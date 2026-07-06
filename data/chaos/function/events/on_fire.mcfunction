#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"On fire","color":"aqua"}
title @a[tag=play] subtitle {"text":"You're so hot right now", "color":"gold"}
title @a[tag=play] title {"text":"On fire", "color":"yellow"}
tellraw @a ["",{"text":"On fire","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 11
scoreboard players set 0 event_remaining 2400