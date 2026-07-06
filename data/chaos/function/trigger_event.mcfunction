#choose event
#during caving
execute if score 0 event_type matches -1 store result score 0 event_type if score 0 time_min matches ..20 run random value 1..22
#during pvp
execute if score 0 event_type matches -1 store result score 0 event_type if score 0 time_min matches 20.. run random value 5..30
#prevent love from being chosen twice
execute if score 0 event_type matches 1 store result score 0 event_type if score 0 time_min matches ..20 if entity @a[tag=Love] run random value 2..22

#cave-only events
execute if score 0 event_type matches 1 run function chaos:events/love
execute if score 0 event_type matches 2 run function chaos:events/gold_rush
execute if score 0 event_type matches 3 run function chaos:events/one_piece
execute if score 0 event_type matches 4 run function chaos:events/poison

#cave and pvp event
execute if score 0 event_type matches 5 run function chaos:events/get_trapped
execute if score 0 event_type matches 6 run function chaos:events/deforestation
execute if score 0 event_type matches 7 run function chaos:events/midas
execute if score 0 event_type matches 8 run function chaos:events/desiccated
execute if score 0 event_type matches 9 run function chaos:events/meteorite
execute if score 0 event_type matches 10 run function chaos:events/alchemy
execute if score 0 event_type matches 11 run function chaos:events/on_fire
execute if score 0 event_type matches 12 run function chaos:events/run
execute if score 0 event_type matches 13 run function chaos:events/taxes
execute if score 0 event_type matches 14 run function chaos:events/clang
execute if score 0 event_type matches 15 run function chaos:events/vote
execute if score 0 event_type matches 16 run function chaos:events/trap
execute if score 0 event_type matches 17 run function chaos:events/vex
execute if score 0 event_type matches 18 run function chaos:events/baby_creeper
execute if score 0 event_type matches 19 run function chaos:events/nether_leaked
execute if score 0 event_type matches 20 run function chaos:events/swap
execute if score 0 event_type matches 21 run function chaos:events/glowing

#pvp-only events
execute if score 0 event_type matches 22 run function chaos:events/slime_rain
execute if score 0 event_type matches 23 run function chaos:events/bunny
execute if score 0 event_type matches 24 run function chaos:events/random_tp
execute if score 0 event_type matches 25 run function chaos:events/ghasts
execute if score 0 event_type matches 26 run function chaos:events/chickens
execute if score 0 event_type matches 27 run function chaos:events/chism
execute if score 0 event_type matches 28 run function chaos:events/cats_and_dogs
execute if score 0 event_type matches 29 run function chaos:events/house
execute if score 0 event_type matches 30 run function chaos:events/cactus

#reset event trigger
scoreboard players set 0 event_type 0
