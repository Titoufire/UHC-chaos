worldborder set 3 1200
execute as @a[tag=play] at @s run spreadplayers 0 0 1 10 under 190 false @s
effect give @a[tag=play] instant_health 10
tellraw @a {"text":"Final Heal !!!","italic":true,"color":"dark_red"}
title @a[tag=play] subtitle {"text":"Everyone get to the center","color":"yellow"}
title @a[tag=play] title {"text":"MEETUP","color":"gold"}
tellraw @a {"text":"The border will shrink to achieve its minimal size at 40 minutes", "color":"light_purple"}
difficulty hard
execute if score 0 lames matches 1 run tellraw @a {"text":"Craft your Blade !", "color":"gold"}
#iron man
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" completed the ","color":"yellow"},{"text":"Iron man","color":"aqua"},{"text":" challenge !","color":"yellow"}]
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run give @s diamond 4
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run give @s golden_apple 5
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run give @s experience_bottle 64
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run give @s obsidian 4
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run give @s flint 64
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run give @s lapis_lazuli 32
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run give @s book 5
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run give @s enchanted_book[stored_enchantments={levels:{'sharpness':3}}] 1
execute as @a[scores={iron_maned=1}] if score 0 iron_man matches 1 run effect give @s absorption 300 2
