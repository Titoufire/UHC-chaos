#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Run","color":"aqua"}
title @a[tag=play] subtitle {"text":"or you'll have an explosive surprise", "color":"gold"}
title @a[tag=play] title {"text":"Run", "color":"yellow"}
tellraw @a ["",{"text":"Run","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 12
scoreboard players set 0 event_remaining 1200
scoreboard players set 0 tnt_cooldown 5