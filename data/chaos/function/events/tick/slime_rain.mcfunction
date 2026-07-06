scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0

execute as @a[tag=play] at @s if score 0 slime_cooldown matches 0 run summon marker ~ ~ ~ {Tags:["Slime"]}
execute as @a[tag=play] at @s if score 0 slime_cooldown matches 0 run spreadplayers ~ ~ 0 40 under 200 false @n[tag=Slime]
execute as @e[tag=Slime] at @s run summon slime ~ ~10 ~
kill @e[tag=Slime]

execute if score 0 slime_cooldown matches 0 run scoreboard players set 0 slime_cooldown 11
scoreboard players remove 0 slime_cooldown 1