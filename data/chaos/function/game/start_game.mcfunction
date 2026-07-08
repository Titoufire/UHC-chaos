scoreboard players set 0 game 1
tag @a[tag=!non_player] add play
scoreboard players set @a[tag=play] deaths 0
scoreboard players set 0 time_event 5
#set worldborder to 1000 in radius +1 (center block)
worldborder set 2001
spreadplayers 0 0 150 1000 false @a[tag=play]
#set spawnpoint for cave revive
execute as @a at @s run spawnpoint @s ~ ~ ~
#give some items to the players
clear @a[tag=play]
give @a[tag=play] cooked_beef 64
give @a[tag=play] feather 64
give @a[tag=play] book 10
#give resistance to players until meetup
effect clear @a[tag=play]
effect give @a[tag=play] resistance 1200 0 true
difficulty easy
scoreboard players set 0 main_board 62
scoreboard players set -1 main_board 61
scoreboard players display name 0 main_board {"text":"          (v1.5)", "color":"gray", "italic":true}
scoreboard players display name -1 main_board {"text":"Minutes:", "color":"gray"}
scoreboard players display name -2 main_board {"text":"Seconds:", "color":"gray"}
scoreboard players display numberformat -2 main_board styled {"color":"yellow"}
scoreboard players display name -3 main_board {"text":" "}
scoreboard players display name -4 main_board {"text":"Next event at:", "color":"gray"}
scoreboard players display name -5 main_board {"text":" "}
scoreboard players display name -6 main_board {"text":"Last event:", "color":"gray"}
scoreboard players display name -7 main_board {"text":"", "color":"aqua"}
scoreboard players set @a kills 0
gamerule commandBlockOutput false
gamerule sendCommandFeedback true
gamerule fallDamage true
summon marker 0 0 0 {Tags:["Border"]}
execute as @a[tag=non_player] run gamemode spectator
#cave finder trigger
scoreboard players set @a[tag=play] cave 0
execute if score 0 cave_finder matches 1 run scoreboard players enable @a[tag=play] cave
#lames
scoreboard players set @a trigger_lame 0
scoreboard players set @a lame 0
scoreboard players set @a iron_maned 1
recipe give @a[tag=play] minecraft:carrot_on_a_stick
#ties
scoreboard players set @a death_time 0
#iron man activated
execute if score 0 iron_man matches 1 run tellraw @a {"text":"Iron Man activated", "color":"aqua"}
scoreboard players set @a[tag=play] dmg_taken 0
#pvp 1.8 activated
execute if score 0 pvp1.8 matches 1 run tellraw @a {"text":"1.8 pvp activated", "color":"green"}
execute if score 0 pvp1.8 matches 1 as @a[tag=play] run attribute @s minecraft:generic.attack_speed base set 1000
#shield ban warning
execute if score 0 shields matches 0 run tellraw @a {"text":"Shields are BANNED for this game", "color":"green"}
