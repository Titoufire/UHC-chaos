scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0

execute as @a[tag=play] at @s if score 0 tnt_cooldown matches 1 run summon tnt ~ ~ ~ {fuse:80}

execute if score 0 tnt_cooldown matches 0 run scoreboard players set 0 tnt_cooldown 60
scoreboard players remove 0 tnt_cooldown 1