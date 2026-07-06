#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Meteorite","color":"aqua"}
title @a[tag=play] subtitle {"text":"Precious metal awaits inside", "color":"gold"}
title @a[tag=play] title {"text":"Meteorite", "color":"yellow"}
tellraw @a ["",{"text":"Meteorite","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
summon marker 0 0 0 {Tags:["Meteorite"]}
spreadplayers 0 0 1 1 under 200 false @e[tag=Meteorite]
execute positioned 0 0 0 if entity @e[tag=Meteorite, distance=..2] run tp @e[tag=Meteorite] 0 62 0
execute as @e[tag=Meteorite] at @s run summon creeper ~ ~ ~ {ExplosionRadius:5, ignited:1b, Fuse:1}
schedule function chaos:events/other/meteorite_final 5t