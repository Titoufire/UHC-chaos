gamerule keepInventory false
gamerule doImmediateRespawn false
team empty noPvP
execute as @a run spawnpoint @s 0 100 0
effect give @a[tag=play] instant_health 10
execute if score 0 cache_kill matches 1 run gamerule showDeathMessages false
execute if score 0 cache_kill matches 0 run gamerule showDeathMessages true
tellraw @a {"text":"Heal !!!","italic":true,"color":"dark_red"}
#"PvP is now Enabled" tellraw
tellraw @a ["",{"text":"PvP","color":"red"},{"text":" is now","color":"gray"},{"text":" Enabled","color":"yellow"},{"text":" !!","color":"gray"}]

#shrine generation
summon marker 0 -100 0 {Tags:["Shrine"]}
# +/+
execute store result score 0 shrine_gen run random value 1..2
execute if score 0 shrine_gen matches 1 store result score 0 shrine_type run random value 1..4
execute if score 0 shrine_gen matches 1 run spreadplayers 250 250 0 1 false @e[tag=Shrine]
execute positioned 0 -100 0 if entity @e[tag=Shrine, distance=..2] if score 0 shrine_gen matches 1 run tp @e[tag=Shrine] 250 63 250
execute at @e[tag=Shrine] if score 0 shrine_type matches 1 run place template chaos:blue_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 2 run place template chaos:green_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 3 run place template chaos:red_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 4 run place template chaos:yellow_shrine ~-4 ~-1 ~-4
tp @e[tag=Shrine] 0 -100 0
#-/-
execute store result score 0 shrine_gen run random value 1..2
execute if score 0 shrine_gen matches 1 store result score 0 shrine_type run random value 1..4
execute if score 0 shrine_gen matches 1 run spreadplayers -250 -250 0 1 false @e[tag=Shrine]
execute positioned 0 -100 0 if entity @e[tag=Shrine, distance=..2] if score 0 shrine_gen matches 1 run tp @e[tag=Shrine] -250 63 -250
execute at @e[tag=Shrine] if score 0 shrine_type matches 1 run place template chaos:blue_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 2 run place template chaos:green_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 3 run place template chaos:red_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 4 run place template chaos:yellow_shrine ~-4 ~-1 ~-4
tp @e[tag=Shrine] 0 -100 0
# +/-
execute store result score 0 shrine_gen run random value 1..2
execute if score 0 shrine_gen matches 1 store result score 0 shrine_type run random value 1..4
execute if score 0 shrine_gen matches 1 run spreadplayers 250 -250 0 1 false @e[tag=Shrine]
execute positioned 0 -100 0 if entity @e[tag=Shrine, distance=..2] if score 0 shrine_gen matches 1 run tp @e[tag=Shrine] 250 63 -250
execute at @e[tag=Shrine] if score 0 shrine_type matches 1 run place template chaos:blue_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 2 run place template chaos:green_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 3 run place template chaos:red_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 4 run place template chaos:yellow_shrine ~-4 ~-1 ~-4
tp @e[tag=Shrine] 0 -100 0
# -/+
execute store result score 0 shrine_gen run random value 1..2
execute if score 0 shrine_gen matches 1 store result score 0 shrine_type run random value 1..4
execute if score 0 shrine_gen matches 1 run spreadplayers -250 250 0 1 false @e[tag=Shrine]
execute positioned 0 -100 0 if entity @e[tag=Shrine, distance=..2] if score 0 shrine_gen matches 1 run tp @e[tag=Shrine] -250 63 250
execute at @e[tag=Shrine] if score 0 shrine_type matches 1 run place template chaos:blue_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 2 run place template chaos:green_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 3 run place template chaos:red_shrine ~-4 ~-1 ~-4
execute at @e[tag=Shrine] if score 0 shrine_type matches 4 run place template chaos:yellow_shrine ~-4 ~-1 ~-4
tp @e[tag=Shrine] 0 -100 0

kill @e[tag=Shrine]
tellraw @a ["",{"text":"Shrines","color":"dark_purple"},{"text":" have been generated.","color":"yellow"}]
