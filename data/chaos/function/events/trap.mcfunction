#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"It's a trap","color":"aqua"}
title @a[tag=play] subtitle {"text":"Watch your steps !", "color":"gold"}
title @a[tag=play] title {"text":"It's a trap", "color":"yellow"}
tellraw @a ["",{"text":"It's a trap","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute as @a[tag=play] at @s run summon marker ~ ~ ~ {Tags:["Trap"]}
schedule function chaos:events/other/trap_final 1s