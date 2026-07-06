scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0

execute as @a[scores={dmg_taken=1..}, tag=play] at @s run summon marker ~ ~ ~ {Tags:["cactus"]}
execute as @e[tag=cactus] at @s run spreadplayers ~ ~ 1 5 under 200 false @s
execute as @e[tag=cactus] store result score @s cactus_height run random value 1..6
execute as @e[tag=cactus] at @s run setblock ~ ~-1 ~ red_sand
execute as @e[tag=cactus] at @s if score @s cactus_height matches 1 run setblock ~ ~ ~ cactus
execute as @e[tag=cactus] at @s if score @s cactus_height matches 2 run setblock ~ ~ ~ cactus
execute as @e[tag=cactus] at @s if score @s cactus_height matches 3 run setblock ~ ~ ~ cactus
execute as @e[tag=cactus] at @s if score @s cactus_height matches 4 run fill ~ ~1 ~ ~ ~ ~ cactus
execute as @e[tag=cactus] at @s if score @s cactus_height matches 5 run fill ~ ~1 ~ ~ ~ ~ cactus
execute as @e[tag=cactus] at @s if score @s cactus_height matches 6 run fill ~ ~2 ~ ~ ~ ~ cactus
kill @e[tag=cactus]
scoreboard players set @a dmg_taken 0