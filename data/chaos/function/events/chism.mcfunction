#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Chism","color":"aqua"}
title @a[tag=play] subtitle {"text":"Make the other side disappear", "color":"gold"}
title @a[tag=play] title {"text":"Chism", "color":"yellow"}
tellraw @a ["",{"text":"Chism","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
team add Green
team add Purple
team modify Green color green
team modify Purple color dark_purple

scoreboard players operation 0 event_remaining = 0 win
scoreboard players set 0 number 2
scoreboard players operation 0 event_remaining /= 0 number
scoreboard players add 0 event_remaining 2
scoreboard players set 0 current_event 27