tellraw @s {"text":"Modifiers:", "italic":true, "underlined":true}
tellraw @s {"text":""}

execute if score 0 cave_finder matches 0 run tellraw @s {"text":"-Cave finder","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 cave_finder 1"}}
execute if score 0 cave_finder matches 1 run tellraw @s {"text":"-Cave finder","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 cave_finder 0"}}
execute if score 0 lames matches 0 run tellraw @s {"text":"-Lames","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 lames 1"}}
execute if score 0 lames matches 1 run tellraw @s {"text":"-Lames","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 lames 0"}}
execute if score 0 cache_kill matches 0 run tellraw @s {"text":"-Cache kill","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 cache_kill 1"}}
execute if score 0 cache_kill matches 1 run tellraw @s {"text":"-Cache kill","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 cache_kill 0"}}
execute if score 0 trouple matches 0 run tellraw @s {"text":"-Trouple","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 trouple 1"}}
execute if score 0 trouple matches 1 run tellraw @s {"text":"-Trouple","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 trouple 0"}}
execute if score 0 iron_man matches 0 run tellraw @s {"text":"-Iron man","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 iron_man 1"}}
execute if score 0 iron_man matches 1 run tellraw @s {"text":"-Iron man","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 iron_man 0"}}
execute if score 0 pvp1.8 matches 0 run tellraw @s {"text":"-1.8 pvp","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 pvp1.8 1"}}
execute if score 0 pvp1.8 matches 1 run tellraw @s {"text":"-1.8 pvp","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 pvp1.8 0"}}
execute if score 0 shields matches 0 run tellraw @s {"text":"-allow shields","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 shields 1"}}
execute if score 0 shields matches 1 run tellraw @s {"text":"-allow shields","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set 0 shields 0"}}

tellraw @s {"text":"Generate roofed","color":"dark_green","clickEvent":{"action":"run_command","value":"/function chaos:generate_roofed"}}
