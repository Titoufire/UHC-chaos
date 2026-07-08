#run time
execute if score 0 game matches 1 run scoreboard players add 0 time_tick 1
execute if score 0 time_tick matches 20 run scoreboard players add 0 time_sec 1
execute if score 0 time_tick matches 20 run scoreboard players set 0 time_tick 0
execute if score 0 time_sec matches 60 run scoreboard players add 0 time_min 1
execute if score 0 time_sec matches 60 run scoreboard players set 0 time_sec 0

#execute 10min sequence when threshold is reached
execute if score 0 time_min matches 10 if score 0 time_tick matches 0 if score 0 time_sec matches 0 run function chaos:game/10min

#execute 20min sequence when threshold is reached
execute if score 0 time_min matches 20 if score 0 time_tick matches 0 if score 0 time_sec matches 0 run function chaos:game/20min

#spawn wither at 40min
execute if score 0 time_min matches 40 if score 0 time_tick matches 0 if score 0 time_sec matches 0 run summon wither 0 100 0
execute if score 0 time_min matches 40 if score 0 time_tick matches 0 if score 0 time_sec matches 0 run tellraw @a ["",{"text":"The","color":"gray"},{"text":" world border","color":"dark_purple"},{"text":" has shrunk to it's","color":"gray"},{"text":" minimum size.","color":"gold"}]

#death detection
execute as @a[scores={deaths=1..}] if score 0 time_min matches ..9 run scoreboard players set @s deaths 0
execute as @a[scores={deaths=1..}] if score 0 time_min matches 10.. run tag @s add dead
execute as @a[scores={deaths=1..}] if score 0 time_min matches 10.. run playsound minecraft:entity.wither.death master @a
execute as @a[scores={deaths=1..}] if score 0 time_min matches 10.. run playsound minecraft:entity.lightning_bolt.thunder master @a
execute as @a[scores={deaths=1..}] if score 0 time_min matches 10.. store result score @s death_x run data get entity @s Pos[0]
execute as @a[scores={deaths=1..}] if score 0 time_min matches 10.. store result score @s death_y run data get entity @s Pos[1]
execute as @a[scores={deaths=1..}] if score 0 time_min matches 10.. store result score @s death_z run data get entity @s Pos[2]
execute as @a[tag=dead] run scoreboard players set @s deaths 0
execute as @a[tag=dead] run tag @s remove play
execute as @a[tag=dead] run tag @s remove Love

#win detection
scoreboard players set 0 win 0
scoreboard players set 0 C_win 0
scoreboard players set 0 P_win 0
scoreboard players set 0 L_win 0

#solo
execute as @a[tag=play] run scoreboard players add 0 win 1
execute if score 0 win matches 1 run scoreboard players set 0 win -1
execute if score 0 win matches 0 run scoreboard players set 0 win -2

#in team
execute as @a[team=Green] run scoreboard players add 0 C_win 1
execute if score 0 C_win = 0 win run scoreboard players set 0 win -1
execute as @a[team=Purple] run scoreboard players add 0 P_win 1
execute if score 0 P_win = 0 win run scoreboard players set 0 win -1

#as a couple (Love)
execute as @a[tag=Love] run scoreboard players add 0 L_win 1
execute if score 0 L_win = 0 win if score 0 time_min matches 10.. run scoreboard players set 0 win -1

#kill other member(s) of the couple/trouple if one dies
execute if score 0 L_win matches 1 if score 0 time_min matches 10.. run tellraw @a ["",{"selector":"@a[tag=Love]","color":"light_purple"},{"text":" est parti(e) rejoindre son ","color":"gray"},{"text":"ame soeur","color":"light_purple"},{"text":" dans la mort.","color":"gray"}]
execute if score 0 L_win matches 1 if score 0 time_min matches 10.. run kill @a[tag=Love]

execute if score 0 trouple matches 1 if score 0 L_win matches 2 if score 0 time_min matches 10.. run tellraw @a ["",{"selector":"@a[tag=Love]","color":"light_purple"},{"text":" sont partis rejoindre leur ","color":"gray"},{"text":"ame soeur","color":"light_purple"},{"text":" dans la mort.","color":"gray"}]
execute if score 0 trouple matches 1 if score 0 L_win matches 2 if score 0 time_min matches 10.. run kill @a[tag=Love]

#win sequence
execute if score 0 win matches -1 if score 0 no_win matches 0 run tag @a[tag=play] add winner
execute if score 0 win matches -1 if score 0 no_win matches 0 run scoreboard players set 0 game 0
execute if score 0 win matches -1 if score 0 no_win matches 0 run function chaos:game/end_game

#tie edge case -> clear items (inv and grd), weapons, no armor, a shield, first to kill the other.
execute if score 0 win matches -2 run kill @e[type=item]
execute if score 0 win matches -2 run kill @e[type=arrow]
execute if score 0 win matches -2 run kill @e[type=wither]
execute if score 0 win matches -2 run clear @a[scores={death_time=..1}]
execute if score 0 win matches -2 run tag @a[scores={death_time=..1}] remove dead
execute if score 0 win matches -2 run tag @a[scores={death_time=..1}] add play
execute if score 0 win matches -2 run gamemode survival @a[scores={death_time=..1}]
execute if score 0 win matches -2 run fill -14 150 -14 14 150 14 reinforced_deepslate
execute if score 0 win matches -2 run worldborder center 0 0
execute if score 0 win matches -2 run worldborder set 15
execute if score 0 win matches -2 as @e[tag=Border] at @s run spreadplayers ~ ~ 0 7 under 190 false @a[scores={death_time=..1}]
execute if score 0 win matches -2 run give @a[scores={death_time=..1}] iron_sword
execute if score 0 win matches -2 run give @a[scores={death_time=..1}] oak_planks 5
execute if score 0 win matches -2 run give @a[scores={death_time=..1}] iron_axe
execute if score 0 win matches -2 run scoreboard players set @a[scores={death_time=..1}] death_time 0

#add death_time
execute as @a[tag=dead] run scoreboard players add @s death_time 1

#events choosing
execute if score 0 time_min = 0 time_event if score 0 time_sec matches 0 if score 0 time_tick matches 0 unless score 0 time_min matches 20 run scoreboard players set 0 event_type -1
execute if score 0 time_min = 0 time_event if score 0 time_sec matches 0 if score 0 time_tick matches 0 run scoreboard players add 0 time_event 5

#trigger corresponding event
function chaos:trigger_event

#prevent people from going too high
execute as @a[scores={coords_y=200..}, tag=play] if score 0 time_min matches 1.. run tellraw @s {"text":"You can't go that high.","color":"red"}
execute as @a[scores={coords_y=200..}, tag=play] if score 0 time_min matches 1.. run spreadplayers 0 0 1 50 under 190 false @s

#prevent people from going too low after 20min
execute as @a[scores={coords_y=..29}, tag=play] if score 0 time_min matches 20.. run tellraw @s {"text":"You can't go that low.","color":"red"}
execute as @a[scores={coords_y=..29}, tag=play] if score 0 time_min matches 20.. run effect give @s slow_falling 2 0 true
execute as @a[scores={coords_y=..29}, tag=play] if score 0 time_min matches 20.. at @s run spreadplayers ~ ~ 1 50 under 190 false @s

#in-game scoreboard
#minutes
function chaos:update_minutes_scoreboard
#seconds
scoreboard players operation -2 main_board = 0 time_sec
#next event
execute if score 0 time_event matches 5 run scoreboard players display name -5 main_board ["",{"text":"5","bold":true,"color":"red"},{"text":" minutes","color":"red"}]
execute if score 0 time_event matches 10 run scoreboard players display name -5 main_board ["",{"text":"10", "color":"red", "bold":true},{"text":" minutes","color":"red"}]
execute if score 0 time_event matches 15 run scoreboard players display name -5 main_board ["",{"text":"15", "color":"red", "bold":true},{"text":" minutes","color":"red"}]
execute if score 0 time_event matches 25 run scoreboard players display name -5 main_board ["",{"text":"25", "color":"red", "bold":true},{"text":" minutes","color":"red"}]
execute if score 0 time_event matches 30 run scoreboard players display name -5 main_board ["",{"text":"30", "color":"red", "bold":true},{"text":" minutes","color":"red"}]
execute if score 0 time_event matches 35 run scoreboard players display name -5 main_board ["",{"text":"35", "color":"red", "bold":true},{"text":" minutes","color":"red"}]
execute if score 0 time_event matches 40 run scoreboard players display name -5 main_board ["",{"text":"40", "color":"red", "bold":true},{"text":" minutes","color":"red"}]
execute if score 0 time_event matches 45 run scoreboard players display name -5 main_board ["",{"text":"45", "color":"red", "bold":true},{"text":" minutes","color":"red"}]
execute if score 0 time_event matches 50 run scoreboard players display name -5 main_board ["",{"text":"50", "color":"red", "bold":true},{"text":" minutes","color":"red"}]

execute if score 0 current_event matches 1.. run function chaos:game/tick_function

#move border after 40min
execute if score 0 time_min matches 40.. if score 0 time_tick matches 0 store result score 0 border run random value 0..4
execute as @e[tag=Border] at @s if score 0 border matches 1 run tp @s ~0.05 ~ ~
execute as @e[tag=Border] at @s if score 0 border matches 2 run tp @s ~-0.05 ~ ~
execute as @e[tag=Border] at @s if score 0 border matches 3 run tp @s ~ ~ ~0.05
execute as @e[tag=Border] at @s if score 0 border matches 4 run tp @s ~ ~ ~-0.05
execute as @e[tag=Border] at @s run worldborder center ~ ~

#cave finder
execute as @a[tag=play, scores={cave=1..}] at @s run spreadplayers ~ ~ 0 30 under 50 false @s
execute as @a[tag=play, scores={cave=1..}] run scoreboard players set @s cave 0
execute if score 0 cave_finder matches 1 run scoreboard players enable @a[tag=play] cave

#lames
execute as @a[scores={trigger_lame=1}] unless score @s lame matches 1.. store result score @s lame run random value 1..6
execute as @a[scores={trigger_lame=1}] run clear @s minecraft:carrot_on_a_stick
execute as @a[scores={trigger_lame=1}] run scoreboard players set @s dura_lame 30
execute as @a[scores={lame=1, trigger_lame=1}] run item replace entity @s weapon.mainhand with nether_star[custom_name='[{"text":"Red Blade","italic":false,"color":"dark_red"}]',lore=['[{"text":"10% Strength effect (Hidden)","italic":false,"color":"gray"}]', '[{"text":"Will break after 30 Hits", "italic":false, "color":"dark_purple"}]'],enchantment_glint_override=true]
execute as @a[scores={lame=2, trigger_lame=1}] run item replace entity @s weapon.mainhand with nether_star[custom_name='[{"text":"Blue Blade","italic":false,"color":"blue"}]',lore=['[{"text":"Speed effect","italic":false,"color":"gray"}]', '[{"text":"Will break after 30 Hits", "italic":false, "color":"dark_purple"}]'],enchantment_glint_override=true]
execute as @a[scores={lame=3, trigger_lame=1}] run item replace entity @s weapon.mainhand with nether_star[custom_name='[{"text":"Gray Blade","italic":false,"color":"dark_gray"}]',lore=['[{"text":"Resistance effect","italic":false,"color":"gray"}]', '[{"text":"Will break after 30 Hits", "italic":false, "color":"dark_purple"}]'],enchantment_glint_override=true]
execute as @a[scores={lame=4, trigger_lame=1}] run item replace entity @s weapon.mainhand with nether_star[custom_name='[{"text":"Pink Blade","italic":false,"color":"light_purple"}]',lore=['[{"text":"Health Boost effect","italic":false,"color":"gray"}]', '[{"text":"Will break after 30 Hits", "italic":false, "color":"dark_purple"}]'],enchantment_glint_override=true]
execute as @a[scores={lame=5, trigger_lame=1}] run item replace entity @s weapon.mainhand with nether_star[custom_name='[{"text":"Yellow Blade","italic":false,"color":"yellow"}]',lore=['[{"text":"Saturation effect","italic":false,"color":"gray"}]', '[{"text":"Will break after 30 Hits", "italic":false, "color":"dark_purple"}]'],enchantment_glint_override=true]
execute as @a[scores={lame=6, trigger_lame=1}] run item replace entity @s weapon.mainhand with nether_star[custom_name='[{"text":"Green Blade","italic":false,"color":"green"}]',lore=['[{"text":"No Fall effect (Hidden)","italic":false,"color":"gray"}]', '[{"text":"Will break after 30 Hits", "italic":false, "color":"dark_purple"}]'],enchantment_glint_override=true]
execute as @a[scores={trigger_lame=1}] run tellraw @s {"text":"You crafted your Blade, you can't make another one", "color": "yellow"}
execute as @a[scores={trigger_lame=1}] run scoreboard players set @s trigger_lame 2
execute as @a[scores={lame=0}] run attribute @s minecraft:generic.attack_damage base set 1
execute as @a[scores={lame=0}] run attribute @s minecraft:generic.safe_fall_distance base set 3
execute as @a[scores={lame=1}] run attribute @s minecraft:generic.attack_damage base set 3
execute as @a[scores={lame=2}] run effect give @s speed 3 0 true
execute as @a[scores={lame=3}] run effect give @s resistance 3 0 true
execute as @a[scores={lame=4}] run effect give @s health_boost 3 0 true
execute as @a[scores={lame=5}] run effect give @s saturation 3 0 true
execute as @a[scores={lame=6}] run attribute @s minecraft:generic.safe_fall_distance base set 1000

execute as @a[scores={dmgDealt=1..}] run scoreboard players remove @s dura_lame 1
execute as @a[scores={dmgDealt=1..}] run scoreboard players set @s dmgDealt 0
execute as @a[scores={dura_lame=0}] run scoreboard players set @s lame 0
execute as @a[scores={dura_lame=0}] run tellraw @s {"text": "Your blade broke. You will no longer benefit from its effects.", "color": "red"}
execute as @a[scores={dura_lame=0}] run scoreboard players remove @s dura_lame 1

#iron man
execute as @a[tag=play, scores={iron_maned=1, dmg_taken=1..}] if score 0 iron_man matches 1 run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" failed the ","color":"yellow"},{"text":"Iron man","color":"aqua"},{"text":" challenge","color":"yellow"}]
execute as @a[tag=play, scores={iron_maned=1, dmg_taken=1..}] if score 0 iron_man matches 1 run scoreboard players set @s iron_maned 0
execute as @a[tag=play, scores={iron_maned=1, dmg_taken=1..}] if score 0 iron_man matches 1 run scoreboard players set @s dmg_taken 0

#fire time scoreboard
execute as @a[tag=play] store result score @s fire_time run data get entity @s Fire

#revives
execute as @a[tag=revive] run function chaos:revive

#ban shields
execute if score 0 shields matches 0 run clear @a shield
