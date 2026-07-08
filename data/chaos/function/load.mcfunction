tellraw @a ["",{"text":"UHC Chaos (v1.5)","underlined":true,"color":"yellow"},{"text":" >","bold":true,"color":"gray"},{"text":" datapack successfully (re)loaded","color":"gold"}]
team add noPvP
team modify noPvP friendlyFire false
team modify noPvP collisionRule never
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule naturalRegeneration false
gamerule doWeatherCycle false
gamerule doDaylightCycle false
gamerule fallDamage false
weather clear
time set noon
worldborder damage buffer 1
forceload add 0 0
forceload add 250 250
forceload add -250 -250
forceload add 250 -250
forceload add -250 250
