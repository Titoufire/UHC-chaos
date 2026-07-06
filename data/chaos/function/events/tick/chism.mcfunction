scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0

team join Green @a[team=!Green, team=!Purple, limit=1, sort=random, tag=play]
team join Purple @a[team=!Green, team=!Purple, limit=1, sort=random, tag=play]