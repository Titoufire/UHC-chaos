#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Alchemy","color":"aqua"}
title @a[tag=play] subtitle {"text":"Have you succeeded ?", "color":"gold"}
title @a[tag=play] title {"text":"Alchemy", "color":"yellow"}
tellraw @a ["",{"text":"Alchemy","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
execute as @a[tag=play] store result score @s event_alchemy run random value 1..27
execute as @a[scores={event_alchemy=1}] run effect give @s absorption 120 0 true
execute as @a[scores={event_alchemy=2}] run effect give @s bad_omen 120 0 true
execute as @a[scores={event_alchemy=3}] run effect give @s blindness 120 0 true
execute as @a[scores={event_alchemy=4}] run effect give @s conduit_power 120 0 true
execute as @a[scores={event_alchemy=5}] run effect give @s darkness 120 0 true
execute as @a[scores={event_alchemy=6}] run effect give @s dolphins_grace 120 0 true
execute as @a[scores={event_alchemy=7}] run effect give @s fire_resistance 120 0 true
execute as @a[scores={event_alchemy=8}] run effect give @s glowing 120 0 true
execute as @a[scores={event_alchemy=9}] run effect give @s haste 120 0 true
execute as @a[scores={event_alchemy=10}] run effect give @s health_boost 120 0 true
execute as @a[scores={event_alchemy=11}] run effect give @s hero_of_the_village 120 0 true
execute as @a[scores={event_alchemy=12}] run effect give @s hunger 120 0 true
execute as @a[scores={event_alchemy=13}] run effect give @s invisibility 120 0 true
execute as @a[scores={event_alchemy=14}] run effect give @s jump_boost 120 0 true
execute as @a[scores={event_alchemy=15}] run effect give @s levitation 120 0 true
execute as @a[scores={event_alchemy=16}] run effect give @s mining_fatigue 120 0 true
execute as @a[scores={event_alchemy=17}] run effect give @s night_vision 120 0 true
execute as @a[scores={event_alchemy=18}] run effect give @s poison 120 0 true
execute as @a[scores={event_alchemy=19}] run effect give @s regeneration 120 0 true
execute as @a[scores={event_alchemy=20}] run effect give @s resistance 120 0 true
execute as @a[scores={event_alchemy=21}] run effect give @s saturation 120 0 true
execute as @a[scores={event_alchemy=22}] run effect give @s slow_falling 120 0 true
execute as @a[scores={event_alchemy=23}] run effect give @s slowness 120 0 true
execute as @a[scores={event_alchemy=24}] run effect give @s speed 120 0 true
execute as @a[scores={event_alchemy=25}] run effect give @s strength 120 0 true
execute as @a[scores={event_alchemy=26}] run effect give @s water_breathing 120 0 true
execute as @a[scores={event_alchemy=27}] run effect give @s weakness 120 0 true

scoreboard players set @a event_alchemy 0