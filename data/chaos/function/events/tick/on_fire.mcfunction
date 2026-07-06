execute as @a[tag=play] at @s run effect give @s fire_resistance 45
execute as @a[tag=play] at @s if block ~ ~ ~ air run setblock ~ ~ ~ fire
scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run schedule function chaos:events/other/on_fire 48s append
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0