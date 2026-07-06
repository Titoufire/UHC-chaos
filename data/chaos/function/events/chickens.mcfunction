#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Chickens","color":"aqua"}
title @a[tag=play] subtitle {"text":"with golden eggs", "color":"gold"}
title @a[tag=play] title {"text":"Chickens", "color":"yellow"}
tellraw @a ["",{"text":"Chickens","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute as @a[tag=play] at @s run summon chicken ~ ~2 ~ {Tags:["Levi"], HandDropChances:[1f], HandItems:[{id:"minecraft:golden_apple", count:1}]}
execute as @a[tag=play] at @s run summon chicken ~1 ~2 ~ {Tags:["Levi"], HandDropChances:[1f], HandItems:[{id:"minecraft:golden_apple", count:1}]}
execute as @a[tag=play] at @s run summon chicken ~ ~2 ~1 {Tags:["Levi"], HandDropChances:[1f], HandItems:[{id:"minecraft:golden_apple", count:1}]}
execute as @a[tag=play] at @s run summon chicken ~-1 ~2 ~ {Tags:["Levi"], HandDropChances:[1f], HandItems:[{id:"minecraft:golden_apple", count:1}]}
execute as @a[tag=play] at @s run summon chicken ~ ~2 ~-1 {Tags:["Levi"], HandDropChances:[1f], HandItems:[{id:"minecraft:golden_apple", count:1}]}
execute as @a[tag=play] at @s run summon chicken ~1 ~2 ~0.5 {Tags:["Levi"], HandDropChances:[1f], HandItems:[{id:"minecraft:golden_apple", count:1}]}
effect give @e[tag=Levi] minecraft:levitation infinite 1 true