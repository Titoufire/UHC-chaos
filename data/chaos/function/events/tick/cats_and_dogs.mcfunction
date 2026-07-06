scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0

execute as @a[tag=play] at @s if score 0 slime_cooldown matches 0 run summon marker ~ ~ ~ {Tags:["C_D"]}
execute as @a[tag=play] at @s if score 0 slime_cooldown matches 0 run spreadplayers ~ ~ 0 40 under 200 false @n[tag=C_D]
execute store result score 0 cat_or_dog run random value 1..2
execute as @e[tag=C_D] at @s if score 0 cat_or_dog matches 1 run summon wolf ~ ~10 ~
execute as @e[tag=C_D] at @s if score 0 cat_or_dog matches 2 run summon cat ~ ~10 ~
kill @e[tag=C_D]

execute if score 0 slime_cooldown matches 0 run scoreboard players set 0 slime_cooldown 11
scoreboard players remove 0 slime_cooldown 1