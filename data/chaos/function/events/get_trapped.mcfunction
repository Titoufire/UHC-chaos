#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Get trapped","color":"aqua"}
title @a[tag=play] subtitle {"text":"in obsidian please", "color":"gold"}
title @a[tag=play] title {"text":"Get trapped", "color":"yellow"}
tellraw @a ["",{"text":"Get trapped","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute as @a[tag=play] at @s run tp @s @s
execute as @a[tag=play] at @s run setblock ~ ~-1 ~ obsidian
execute as @a[tag=play] at @s run setblock ~ ~2 ~ obsidian
execute as @a[tag=play] at @s run setblock ~1 ~ ~ obsidian
execute as @a[tag=play] at @s run setblock ~1 ~1 ~ black_wool
execute as @a[tag=play] at @s run setblock ~-1 ~ ~ obsidian
execute as @a[tag=play] at @s run setblock ~-1 ~1 ~ black_wool
execute as @a[tag=play] at @s run setblock ~ ~ ~1 obsidian
execute as @a[tag=play] at @s run setblock ~ ~1 ~1 black_wool
execute as @a[tag=play] at @s run setblock ~ ~ ~-1 obsidian
execute as @a[tag=play] at @s run setblock ~ ~1 ~-1 black_wool
execute as @a[tag=play] at @s run setblock ~ ~ ~ water
execute as @a[tag=play] at @s run setblock ~ ~1 ~ water