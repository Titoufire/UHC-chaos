#setup scoreboard
scoreboard objectives add main_board dummy ["",{"text":"/!\\","bold":true,"underlined":true,"color":"red"},{"text":" ","bold":true,"color":"gold"},{"text":"UHC Chaos","bold":true,"underlined":true,"color":"gold"},{"text":" ","bold":true,"color":"gold"},{"text":"/!\\","bold":true,"underlined":true,"color":"red"}]
scoreboard objectives setdisplay sidebar main_board
#version
scoreboard players set 0 main_board 0
scoreboard players display name 0 main_board {"text":"           (v1.5)", "color":"gray", "italic":true}
scoreboard players display numberformat 0 main_board blank
#game will start soon
scoreboard players set -1 main_board -1
scoreboard players display name -1 main_board {"text":"Game will start soon..."}
scoreboard players display numberformat -1 main_board blank
#border info
scoreboard players set -2 main_board -2
scoreboard players display name -2 main_board ["",{"text":"Border: ","color":"gray"},{"text":"±","color":"red"},{"text":" 1000","bold":true,"color":"red"},{"text":" blocks","color":"red"}]
scoreboard players display numberformat -2 main_board blank
#event time info
scoreboard players set -3 main_board -3
scoreboard players display name -3 main_board ["",{"text":"Events every: ","color":"gray"},{"text":"5","bold":true,"color":"red"}, {"text":" min","color":"red"}]
scoreboard players display numberformat -3 main_board blank
#minage time info
scoreboard players set -4 main_board -4
scoreboard players display name -4 main_board ["",{"text":"Mining time: ","color":"gray"},{"text":"20","bold":true,"color":"red"}, {"text":" min","color":"red"}]
scoreboard players display numberformat -4 main_board blank
#blank
scoreboard players set -5 main_board -5
scoreboard players display name -5 main_board {"text":""}
scoreboard players display numberformat -5 main_board blank
#credits:
scoreboard players set -6 main_board -6
scoreboard players display name -6 main_board ["",{"text":"Credits:","bold":true}]
scoreboard players display numberformat -6 main_board blank
#player credits
scoreboard players set -7 main_board -7
scoreboard players display name -7 main_board ["",{"text":"Xorg78","underlined":true,"color":"white"},{"text":" and ","color":"white"},{"text":"Titoufire26","underlined":true,"color":"white"}]
scoreboard players display numberformat -7 main_board blank

#game scoreboard
scoreboard objectives add game dummy
scoreboard players set 0 game 0

#time scoreboards
scoreboard objectives add time_tick dummy
scoreboard objectives add time_sec dummy
scoreboard objectives add time_min dummy
scoreboard objectives add time_event dummy
scoreboard players set 0 time_tick 0
scoreboard players set 0 time_sec 0
scoreboard players set 0 time_min 0
scoreboard players set 0 time_event 0

#life scoreboard
scoreboard objectives add hp health
scoreboard objectives modify hp rendertype hearts
scoreboard objectives setdisplay list hp

#death scoreboard
scoreboard objectives add deaths deathCount
scoreboard players set @a deaths 0

#win scoreboard
scoreboard objectives add win dummy
scoreboard players set 0 win 0

#event scoreboard
scoreboard objectives add event_type dummy

#current event scoreboard
scoreboard objectives add current_event dummy
scoreboard players set 0 current_event 0

#remaining event time scoreboard
scoreboard objectives add event_remaining dummy

#end of game cooldown scoreboard
scoreboard objectives add end_cooldown dummy
scoreboard players set 0 end_cooldown 0

#shrine scoreboard
scoreboard objectives add shrine_gen dummy
scoreboard players set 0 shrine_gen 0
scoreboard objectives add shrine_type dummy
scoreboard players set 0 shrine_type 0

#kills scoreboard
scoreboard objectives add kills playerKillCount {"text":"kills", "color":"red"}
scoreboard objectives setdisplay below_name kills

#status effect scoreboard (event: Alchemy)
scoreboard objectives add event_alchemy dummy

#inventory slot scoreboard (event: Taxes)
scoreboard objectives add event_taxes dummy

#structure scoreboard (event: House)
scoreboard objectives add event_house dummy

#slime cooldown (event: Slime_rain)
scoreboard objectives add slime_cooldown dummy
scoreboard players set 0 slime_cooldown 0

#cat or dog (event: It's raining cats and dogs)
scoreboard objectives add cat_or_dog dummy

#tnt summon cooldown (event: Run)
scoreboard objectives add tnt_cooldown dummy
scoreboard players set 0 tnt_cooldown 0

#crafting table scoreboard (event: Poison)
scoreboard objectives add craft_used minecraft.used:minecraft.crafting_table

#number scoreboard
scoreboard objectives add number dummy

#team win
scoreboard objectives add C_win dummy
scoreboard objectives add P_win dummy
scoreboard objectives add L_win dummy
scoreboard players set 0 C_win 0
scoreboard players set 0 P_win 0
scoreboard players set 0 L_win 0

#bucket placed scoreboard (event: Swap)
scoreboard objectives add swap minecraft.used:minecraft.water_bucket

#vote scoreboards (event: vote)
scoreboard objectives add vote trigger
scoreboard objectives add to_vote dummy
scoreboard objectives add voted dummy

#border scoreboard
scoreboard objectives add border dummy
scoreboard players set 0 border 0

#no_win scoreboard (deactivate win sequence)
scoreboard objectives add no_win dummy
scoreboard players set 0 no_win 0

#damage blocked (event: cactus)
scoreboard objectives add dmg_taken minecraft.custom:minecraft.damage_taken

#cactus height (event: cactus)
scoreboard objectives add cactus_height dummy

#modifiers
scoreboard objectives add cave_finder dummy
scoreboard objectives add lames dummy
scoreboard objectives add cache_kill dummy
scoreboard objectives add trouple dummy
scoreboard objectives add iron_man dummy
scoreboard objectives add pvp1.8 dummy
scoreboard objectives add shields dummy
scoreboard players set 0 cave_finder 1
scoreboard players set 0 lames 1
scoreboard players set 0 cache_kill 0
scoreboard players set 0 trouple 0
scoreboard players set 0 iron_man 1
scoreboard players set 0 pvp1.8 0
scoreboard players set 0 shields 1
scoreboard objectives add cave trigger
scoreboard objectives add lame dummy
scoreboard objectives add trigger_lame minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add dura_lame dummy
scoreboard objectives add dmgDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add iron_maned dummy

#time since death (to determine ties)
scoreboard objectives add death_time dummy

#fire time (event: On_Fire)
scoreboard objectives add fire_time dummy

#coordinate display
scoreboard objectives add coords_x dummy
scoreboard objectives add coords_y dummy
scoreboard objectives add coords_z dummy

#death coords for revive
scoreboard objectives add death_x dummy
scoreboard objectives add death_y dummy
scoreboard objectives add death_z dummy
