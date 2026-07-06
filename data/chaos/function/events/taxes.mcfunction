#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"taxes","color":"aqua"}
title @a[tag=play] subtitle {"text":"'Cuz Capitalism !!", "color":"gold"}
title @a[tag=play] title {"text":"Taxes", "color":"yellow"}
tellraw @a ["",{"text":"taxes","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
setblock 0 250 0 chest
item replace block 0 250 0 container.0 with paper[minecraft:custom_name='"Took for taxes"']
execute as @a[tag=play] store result score @s event_taxes run random value 1..41

#/item right slot
#item replace
execute as @a[scores={event_taxes=1}] run item replace entity @s inventory.0 from block 0 250 0 container.0
execute as @a[scores={event_taxes=2}] run item replace entity @s inventory.1 from block 0 250 0 container.0
execute as @a[scores={event_taxes=3}] run item replace entity @s inventory.2 from block 0 250 0 container.0
execute as @a[scores={event_taxes=4}] run item replace entity @s inventory.3 from block 0 250 0 container.0
execute as @a[scores={event_taxes=5}] run item replace entity @s inventory.4 from block 0 250 0 container.0
execute as @a[scores={event_taxes=6}] run item replace entity @s inventory.5 from block 0 250 0 container.0
execute as @a[scores={event_taxes=7}] run item replace entity @s inventory.6 from block 0 250 0 container.0
execute as @a[scores={event_taxes=8}] run item replace entity @s inventory.7 from block 0 250 0 container.0
execute as @a[scores={event_taxes=9}] run item replace entity @s inventory.8 from block 0 250 0 container.0
execute as @a[scores={event_taxes=10}] run item replace entity @s inventory.9 from block 0 250 0 container.0
execute as @a[scores={event_taxes=11}] run item replace entity @s inventory.10 from block 0 250 0 container.0
execute as @a[scores={event_taxes=12}] run item replace entity @s inventory.11 from block 0 250 0 container.0
execute as @a[scores={event_taxes=13}] run item replace entity @s inventory.12 from block 0 250 0 container.0
execute as @a[scores={event_taxes=14}] run item replace entity @s inventory.13 from block 0 250 0 container.0
execute as @a[scores={event_taxes=15}] run item replace entity @s inventory.14 from block 0 250 0 container.0
execute as @a[scores={event_taxes=16}] run item replace entity @s inventory.15 from block 0 250 0 container.0
execute as @a[scores={event_taxes=17}] run item replace entity @s inventory.16 from block 0 250 0 container.0
execute as @a[scores={event_taxes=18}] run item replace entity @s inventory.17 from block 0 250 0 container.0
execute as @a[scores={event_taxes=19}] run item replace entity @s inventory.18 from block 0 250 0 container.0
execute as @a[scores={event_taxes=20}] run item replace entity @s inventory.19 from block 0 250 0 container.0
execute as @a[scores={event_taxes=20}] run item replace entity @s inventory.20 from block 0 250 0 container.0
execute as @a[scores={event_taxes=22}] run item replace entity @s inventory.21 from block 0 250 0 container.0
execute as @a[scores={event_taxes=23}] run item replace entity @s inventory.22 from block 0 250 0 container.0
execute as @a[scores={event_taxes=24}] run item replace entity @s inventory.23 from block 0 250 0 container.0
execute as @a[scores={event_taxes=25}] run item replace entity @s inventory.24 from block 0 250 0 container.0
execute as @a[scores={event_taxes=26}] run item replace entity @s inventory.25 from block 0 250 0 container.0
execute as @a[scores={event_taxes=27}] run item replace entity @s inventory.26 from block 0 250 0 container.0
execute as @a[scores={event_taxes=28}] run item replace entity @s hotbar.0 from block 0 250 0 container.0
execute as @a[scores={event_taxes=29}] run item replace entity @s hotbar.1 from block 0 250 0 container.0
execute as @a[scores={event_taxes=30}] run item replace entity @s hotbar.2 from block 0 250 0 container.0
execute as @a[scores={event_taxes=31}] run item replace entity @s hotbar.3 from block 0 250 0 container.0
execute as @a[scores={event_taxes=32}] run item replace entity @s hotbar.4 from block 0 250 0 container.0
execute as @a[scores={event_taxes=33}] run item replace entity @s hotbar.5 from block 0 250 0 container.0
execute as @a[scores={event_taxes=34}] run item replace entity @s hotbar.6 from block 0 250 0 container.0
execute as @a[scores={event_taxes=35}] run item replace entity @s hotbar.7 from block 0 250 0 container.0
execute as @a[scores={event_taxes=36}] run item replace entity @s hotbar.8 from block 0 250 0 container.0
execute as @a[scores={event_taxes=37}] run item replace entity @s armor.head from block 0 250 0 container.0
execute as @a[scores={event_taxes=38}] run item replace entity @s armor.chest with air
execute as @a[scores={event_taxes=39}] run item replace entity @s armor.legs with air
execute as @a[scores={event_taxes=40}] run item replace entity @s armor.feet with air
execute as @a[scores={event_taxes=41}] run item replace entity @s weapon.offhand from block 0 250 0 container.0

#reset scoreboard and container block
scoreboard players set @a event_taxes 0
setblock 0 250 0 air replace