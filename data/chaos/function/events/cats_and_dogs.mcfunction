#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Cats and Dogs","color":"aqua"}
title @a[tag=play] subtitle {"text":"SAVE 'EM !!!", "color":"gold"}
title @a[tag=play] title {"text":"It's raining Cats and Dogs", "color":"yellow"}
tellraw @a ["",{"text":"Cats and Dogs","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 current_event 28
scoreboard players set 0 event_remaining 4800
scoreboard players set 0 slime_cooldown 5