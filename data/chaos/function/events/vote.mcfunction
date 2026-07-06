#event title and scoreboard appearance
scoreboard players display name -7 main_board {"text":"Vote","color":"aqua"}
title @a[tag=play] subtitle {"text":"for whoever you dislike most", "color":"gold"}
title @a[tag=play] title {"text":"Vote", "color":"yellow"}
tellraw @a ["",{"text":"Vote","color":"aqua"},{"text":" has been chosen !","color":"yellow"}]

#event logic
scoreboard players set 0 to_vote 0
scoreboard players set @a vote 0
scoreboard players set @a voted 0
scoreboard players set @a to_vote 0
scoreboard players enable @a[tag=play] vote
execute as @a[tag=play] run function chaos:events/other/vote_tellraw
execute as @e[tag=play] run tellraw @a [{"text":"["}, {"selector":"@s", "clickEvent":{"action":"suggest_command","value":"/trigger vote set "}}, {"text":"] -> "}, {"score":{"name":"@s","objective":"to_vote"}}]
tellraw @a [{"text":"Click on the pseudo of whoever you dislike most in the message above, then type in the number associated to vote against that person", "color":"yellow"}]
tellraw @a {"text":"You have one minute to vote", "color":"gold"}
schedule function chaos:events/other/vote_final 60s