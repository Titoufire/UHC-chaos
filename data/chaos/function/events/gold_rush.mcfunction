#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Gold rush","color":"aqua"}
title @a[tag=play] subtitle {"text":"Find gold. QUICK !!!", "color":"gold"}
title @a[tag=play] title {"text":"Gold rush", "color":"yellow"}
tellraw @a ["",{"text":"Gold rush","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 2
scoreboard players set 0 event_remaining 3600