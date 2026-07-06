scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0

execute as @a[tag=!Hydrated] at @s if block ~ ~ ~ water run tag @s add Hydrated
execute as @a[tag=Hydrated] run effect clear @s poison