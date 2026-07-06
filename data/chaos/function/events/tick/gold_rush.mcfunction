scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0

execute as @e[nbt={Item:{id:"minecraft:gold_ingot"}}, tag=!duped] at @s unless data entity @s Thrower run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot", count:1}, Tags:["duped"]}
execute as @e[nbt={Item:{id:"minecraft:gold_ingot"}}, tag=!duped] run tag @s add duped
