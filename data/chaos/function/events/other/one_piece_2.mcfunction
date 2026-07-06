execute as @e[tag=One_piece] at @s run spreadplayers ~150 ~ 0 1 under 200 false @e[tag=Line1]
execute as @e[tag=One_piece] at @s run spreadplayers ~-150 ~ 0 1 under 200 false @e[tag=Line2]
execute as @e[tag=One_piece] at @s run spreadplayers ~ ~150 0 1 under 200 false @e[tag=Line3]
execute as @e[tag=One_piece] at @s run spreadplayers ~ ~-150 0 1 under 200 false @e[tag=Line4]

execute as @e[tag=One_piece] at @s run place template chaos:one_piece ~-3 ~-20 ~-3
execute as @e[tag=Line1] at @s run place template minecraft:bastion/treasure/extensions/fire_room ~-4 ~ ~-4
execute as @e[tag=Line2] at @s run place template minecraft:bastion/treasure/extensions/fire_room ~-4 ~ ~-4
execute as @e[tag=Line3] at @s run place template minecraft:bastion/bridge/legs/leg_0 ~-1 ~-8 ~-1
execute as @e[tag=Line4] at @s run place template minecraft:bastion/bridge/legs/leg_0 ~-1 ~-8 ~-1

kill @e[tag=Line1]
kill @e[tag=Line2]
kill @e[tag=Line3]
kill @e[tag=Line4]
execute as @e[tag=One_piece] at @s run forceload remove ~ ~ ~175 ~
execute as @e[tag=One_piece] at @s run forceload remove ~ ~ ~-175 ~
execute as @e[tag=One_piece] at @s run forceload remove ~ ~ ~ ~175
execute as @e[tag=One_piece] at @s run forceload remove ~ ~ ~ ~-175

kill @e[tag=One_piece]
forceload remove 100 100 -100 -100