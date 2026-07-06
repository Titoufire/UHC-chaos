#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Baby creeper","color":"aqua"}
title @a[tag=play] subtitle {"text":"A creeper but scarier", "color":"gold"}
title @a[tag=play] title {"text":"Baby creeper", "color":"yellow"}
tellraw @a ["",{"text":"Baby creeper","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute as @a[tag=play] at @s run summon creeper ~ ~ ~ {Fuse:45s, ExplosionRadius:2b}
execute as @a[tag=play] at @s run attribute @n[type=creeper] minecraft:generic.movement_speed base set 0.4
execute as @a[tag=play] at @s run attribute @n[type=creeper] minecraft:generic.scale base set 0.58