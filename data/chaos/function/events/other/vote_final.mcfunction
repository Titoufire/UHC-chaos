execute as @a[tag=play] at @a[tag=play] if score @p vote = @s to_vote run scoreboard players add @s voted 1

execute as @a[tag=play] run scoreboard players operation 0 voted > @s voted
execute as @a[tag=play] if score @s voted = 0 voted run effect give @s weakness 300
execute as @a[tag=play] if score @s voted = 0 voted run tellraw @s {"text":"You were the most voted player", "color":"green"}