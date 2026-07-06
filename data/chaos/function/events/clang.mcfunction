#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Clang","color":"aqua"}
title @a[tag=play] subtitle {"text":"Watch your head !", "color":"gold"}
title @a[tag=play] title {"text":"Clang", "color":"yellow"}
tellraw @a ["",{"text":"Clang","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute as @a[tag=play] at @s run fill ~ ~ ~ ~ ~9 ~ air
execute as @a[tag=play] at @s run setblock ~ ~9 ~ anvil