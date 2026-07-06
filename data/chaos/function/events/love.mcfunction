#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Love","color":"aqua"}
title @a[tag=play] subtitle {"text":"Do you love someone ?", "color":"gold"}
title @a[tag=play] title {"text":"Love", "color":"yellow"}
tellraw @a ["",{"text":"Love","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic (decide trouple)
execute if score 0 trouple matches 1 store result score 0 trouple run random value 1..5
execute if score 0 trouple matches 2.. run scoreboard players set 0 trouple 0

#event logic (if couple)
execute if score 0 trouple matches 0 run tag @a[limit=2, sort=random, tag=!Love] add Love
execute if score 0 trouple matches 0 run tag @r[tag=Love] add Love1
execute if score 0 trouple matches 0 run tag @a[tag=Love, tag=!Love1] add Love2
execute if score 0 trouple matches 0 run give @a[tag=Love] enchanted_book[stored_enchantments={levels:{'punch':1}}] 1
execute if score 0 trouple matches 0 run tellraw @a[tag=Love1] ["",{"text":"Vous etes en couple avec ","color":"gray"},{"selector":"@a[tag=Love2]","color":"light_purple"},{"text":" Vous devez gagner ensemble. Si l'un de vous meurt, l'autre mourras aussi.","color":"gray"},{"text":" Bonne chance !","color":"yellow"}]
execute if score 0 trouple matches 0 run tellraw @a[tag=Love2] ["",{"text":"Vous etes en couple avec ","color":"gray"},{"selector":"@a[tag=Love1]","color":"light_purple"},{"text":" Vous devez gagner ensemble. Si l'un de vous meurt, l'autre mourras aussi.","color":"gray"},{"text":" Bonne chance !","color":"yellow"}]
execute if score 0 trouple matches 0 run tellraw @a[tag=!Love] ["",{"text":"Un ","color":"gray"},{"text":"couple","color":"light_purple"},{"text":" vient d'etre formé. ","color":"gray"},{"text":"Ils doivent gagner ensemble.","color":"yellow"},{"text":" Eliminez-les !","color":"red"}]

#event logic (if trouple)
execute if score 0 trouple matches 1 run tag @a[limit=3, sort=random, tag=!Love] add Love
execute if score 0 trouple matches 1 run tag @r[tag=Love] add Love1
execute if score 0 trouple matches 1 run tag @r[tag=Love, tag=!Love1] add Love2
execute if score 0 trouple matches 1 run tag @r[tag=Love, tag=!Love1, tag=!Love2] add Love3
execute if score 0 trouple matches 1 run give @a[tag=Love] enchanted_book[stored_enchantments={levels:{'punch':1}}] 1
execute if score 0 trouple matches 1 run tellraw @a[tag=Love1] ["",{"text":"Vous etes en couple avec ","color":"gray"},{"selector":"@a[tag=Love2]","color":"light_purple"},{"text":" Vous devez gagner ensemble. Si l'un de vous meurt, l'autre mourras aussi.","color":"gray"},{"text":" Bonne chance !","color":"yellow"}]
execute if score 0 trouple matches 1 run tellraw @a[tag=Love2] ["",{"text":"Vous etes en couple avec ","color":"gray"},{"selector":"@a[tag=Love3]","color":"light_purple"},{"text":" Vous devez gagner ensemble. Si l'un de vous meurt, l'autre mourras aussi.","color":"gray"},{"text":" Bonne chance !","color":"yellow"}]
execute if score 0 trouple matches 1 run tellraw @a[tag=Love3] ["",{"text":"Vous etes en couple avec ","color":"gray"},{"selector":"@a[tag=Love1]","color":"light_purple"},{"text":" Vous devez gagner ensemble. Si l'un de vous meurt, l'autre mourras aussi.","color":"gray"},{"text":" Bonne chance !","color":"yellow"}]
execute if score 0 trouple matches 1 run tellraw @a[tag=!Love] ["",{"text":"Un ","color":"gray"},{"text":"couple","color":"light_purple"},{"text":" vient d'etre formé. ","color":"gray"},{"text":"Ils doivent gagner ensemble.","color":"yellow"},{"text":" Eliminez-les !","color":"red"}]