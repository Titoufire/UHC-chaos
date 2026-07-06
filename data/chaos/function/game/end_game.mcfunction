kill @e[type=wither]
scoreboard players set 0 win 0
title @a subtitle {"text":"Congratulations !!!","color":"gold"}
title @a title ["",{"selector":"@a[tag=winner]","underlined":true,"color":"red"},{"text":" won !","color":"yellow"}]
tellraw @a ["",{"selector":"@a[tag=winner]","color":"gray"},{"text":" won with","color":"yellow"},{"text":" "},{"score":{"name":"@a[tag=winner]","objective":"kills"},"color":"red"},{"text":" kills.","color":"yellow"}]
effect clear @a[tag=winner]
effect give @a[tag=winner] resistance 20 4 true
playsound minecraft:entity.wither.spawn master @a
scoreboard players set 0 end_cooldown 200
gamerule commandBlockOutput true
gamerule sendCommandFeedback true
gamerule fallDamage false
worldborder set 1000 30
tag @a remove play
tag @a remove Love
tag @a remove Love1
tag @a remove Love2
tag @a remove Love3