#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Slime rain","color":"aqua"}
title @a[tag=play] subtitle {"text":"It's all gooey outside", "color":"gold"}
title @a[tag=play] title {"text":"Slime rain", "color":"yellow"}
tellraw @a ["",{"text":"Slime rain","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 22
scoreboard players set 0 event_remaining 4800
scoreboard players set 0 slime_cooldown 5