spreadplayers 0 0 0 100 false @e[tag=One_piece]

execute as @e[tag=One_piece] at @s run forceload add ~ ~ ~175 ~
execute as @e[tag=One_piece] at @s run forceload add ~ ~ ~-175 ~
execute as @e[tag=One_piece] at @s run forceload add ~ ~ ~ ~175
execute as @e[tag=One_piece] at @s run forceload add ~ ~ ~ ~-175
schedule function chaos:events/other/one_piece_2 15t