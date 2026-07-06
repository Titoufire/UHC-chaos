#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Swap","color":"aqua"}
title @a[tag=play] subtitle {"text":"What is it gonna be next ?", "color":"gold"}
title @a[tag=play] title {"text":"Swap", "color":"yellow"}
tellraw @a ["",{"text":"Swap","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 20
scoreboard players set 0 event_remaining 4800