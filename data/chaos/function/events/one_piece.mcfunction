#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"One piece","color":"aqua"}
title @a[tag=play] subtitle {"text":"Find the treasure where the lines cross", "color":"gold"}
title @a[tag=play] title {"text":"One piece", "color":"yellow"}
tellraw @a ["",{"text":"One piece","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
tellraw @a {"text":"Piglins built structures on those lines...", "color":"gold"}

summon marker 0 0 0 {Tags:["One_piece"]}
summon marker 0 0 0 {Tags:["Line1"]}
summon marker 0 0 0 {Tags:["Line2"]}
summon marker 0 0 0 {Tags:["Line3"]}
summon marker 0 0 0 {Tags:["Line4"]}

forceload add 100 100 -100 -100
schedule function chaos:events/other/one_piece_1 15t