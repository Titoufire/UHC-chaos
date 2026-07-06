scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0

execute as @a[scores={swap=1}] store result score @s swap run random value 1..2
execute as @a[scores={swap=2}] at @s anchored eyes if block ^ ^ ^ water store success score @s swap run setblock ^ ^ ^ lava
execute as @a[scores={swap=2}] at @s anchored eyes if block ^ ^ ^1 water store success score @s swap run setblock ^ ^ ^1 lava
execute as @a[scores={swap=2}] at @s anchored eyes if block ^ ^ ^2 water store success score @s swap run setblock ^ ^ ^2 lava
execute as @a[scores={swap=2}] at @s anchored eyes if block ^ ^ ^3 water store success score @s swap run setblock ^ ^ ^3 lava
execute as @a[scores={swap=2}] at @s anchored eyes if block ^ ^ ^4 water store success score @s swap run setblock ^ ^ ^4 lava
execute as @a[scores={swap=2}] at @s anchored eyes if block ^ ^ ^5 water store success score @s swap run setblock ^ ^ ^5 lava
scoreboard players set @a swap 0