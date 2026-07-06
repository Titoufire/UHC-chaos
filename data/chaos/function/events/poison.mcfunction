#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Crafting poisons","color":"aqua"}
title @a[tag=play] subtitle {"text":"Poisons you. Avoid crafting", "color":"gold"}
title @a[tag=play] title {"text":"Crafting", "color":"yellow"}
tellraw @a ["",{"text":"Crafting poisons","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 4
scoreboard players set 0 event_remaining 4800
scoreboard players set @a[tag=play] craft_used 0