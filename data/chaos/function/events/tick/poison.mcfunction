scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0

execute as @a[scores={craft_used=1..}] run effect give @s poison 30
execute as @a[scores={craft_used=1..}] run scoreboard players set @s craft_used 0