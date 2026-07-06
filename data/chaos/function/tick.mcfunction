#tag handling
execute as @a[tag=!play, tag=!dead, tag=!lobby_immune] run gamemode adventure @s
execute as @a[gamemode=adventure] run effect give @s resistance 6 4 true
execute as @a[gamemode=adventure] run effect give @s saturation 1
execute as @a[tag=play] run gamemode survival
execute as @a[tag=dead] run gamemode spectator

#hastyboys
execute as @a if items entity @s weapon.mainhand #minecraft:pickaxes run enchant @s minecraft:efficiency 2
execute as @a if items entity @s weapon.mainhand #minecraft:pickaxes run enchant @s minecraft:unbreaking 3
execute as @a if items entity @s weapon.mainhand #minecraft:swords run item modify entity @s weapon.mainhand chaos:swordies
execute as @a if items entity @s weapon.mainhand #minecraft:axes run enchant @s minecraft:efficiency 2
execute as @a if items entity @s weapon.mainhand #minecraft:axes run enchant @s minecraft:unbreaking 3
execute as @a if items entity @s weapon.mainhand #minecraft:shovels run enchant @s minecraft:efficiency 2
execute as @a if items entity @s weapon.mainhand #minecraft:shovels run enchant @s minecraft:unbreaking 3

#call main loop function if game is active
execute if score 0 game matches 1 run function chaos:game/game_loop

#remove pvp if time under 10min.
execute if score 0 time_min matches ..9 run team join noPvP @a

#cooldown after game ends, before all players get tp back to spawn
execute if score 0 end_cooldown matches 1.. run scoreboard players remove 0 end_cooldown 1
execute if score 0 end_cooldown matches 1 run tag @a[tag=play] remove play
execute if score 0 end_cooldown matches 1 run tag @a[tag=dead] remove dead
execute if score 0 end_cooldown matches 1 run tp @a 0 301 0
execute if score 0 end_cooldown matches 1 run tp @a[tag=winner] 4 304 0 90 20
execute if score 0 end_cooldown matches 1 run tag @a[tag=winner] remove winner
execute if score 0 end_cooldown matches 1 run clear @a
execute if score 0 end_cooldown matches 1 run spawnpoint @a 0 301 0
execute if score 0 end_cooldown matches 1 run function chaos:scoreboard

#winner text display
execute positioned 4.5 304.5 0.5 unless entity @a[distance=..0.8] run kill @e[type=text_display]
execute positioned 4.5 304.5 0.5 as @a[distance=..0.8] unless entity @e[type=text_display, distance=..3] run summon minecraft:text_display 4.5 306.5 0.5 {Rotation:[90f, 0f], text:'{"text":"Winner", "color":"gold"}', billboard:horizontal}

#coordinate display
execute as @a store result score @s coords_x run data get entity @s Pos[0]
execute as @a store result score @s coords_y run data get entity @s Pos[1]
execute as @a store result score @s coords_z run data get entity @s Pos[2]

execute as @a run title @s actionbar ["",{"text":"X","color":"red"},": ",{"score":{"name":"@s","objective":"coords_x"},"color":"red"},", ",{"text":"Y","color":"green"},": ",{"score":{"name":"@s","objective":"coords_y"},"color":"green"},", ",{"text":"Z","color":"blue"},": ",{"score":{"name":"@s","objective":"coords_z"},"color":"blue"}]
