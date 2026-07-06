scoreboard players remove 0 event_remaining 1
execute if score 0 event_remaining matches 1 run scoreboard players set 0 current_event 0
execute if score 0 event_remaining matches 1 run tellraw @a [{"text":"Event ", "color":"yellow"}, {"text":"Midas", "color":"aqua"}, {"text":" has ended", "color":"yellow"}]

execute as @a[tag=play] if items entity @s player.cursor iron_axe run item modify entity @s player.cursor chaos:axe_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_block run item modify entity @s player.cursor chaos:block_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_boots run item modify entity @s player.cursor chaos:boots_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_chestplate run item modify entity @s player.cursor chaos:chest_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_helmet run item modify entity @s player.cursor chaos:helmet_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_ingot run item modify entity @s player.cursor chaos:ingot_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_leggings run item modify entity @s player.cursor chaos:legs_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_nugget run item modify entity @s player.cursor chaos:nugget_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_pickaxe run item modify entity @s player.cursor chaos:pick_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_shovel run item modify entity @s player.cursor chaos:shovel_to_gold
execute as @a[tag=play] if items entity @s player.cursor iron_sword run item modify entity @s player.cursor chaos:sword_to_gold

execute as @a[tag=play] if items entity @s weapon.mainhand iron_axe run item modify entity @s weapon.mainhand chaos:axe_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_block run item modify entity @s weapon.mainhand chaos:block_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_boots run item modify entity @s weapon.mainhand chaos:boots_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_chestplate run item modify entity @s weapon.mainhand chaos:chest_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_helmet run item modify entity @s weapon.mainhand chaos:helmet_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_ingot run item modify entity @s weapon.mainhand chaos:ingot_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_leggings run item modify entity @s weapon.mainhand chaos:legs_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_nugget run item modify entity @s weapon.mainhand chaos:nugget_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_pickaxe run item modify entity @s weapon.mainhand chaos:pick_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_shovel run item modify entity @s weapon.mainhand chaos:shovel_to_gold
execute as @a[tag=play] if items entity @s weapon.mainhand iron_sword run item modify entity @s weapon.mainhand chaos:sword_to_gold

execute as @a[tag=play] if items entity @s weapon.offhand iron_axe run item modify entity @s weapon.offhand chaos:axe_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_block run item modify entity @s weapon.offhand chaos:block_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_boots run item modify entity @s weapon.offhand chaos:boots_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_chestplate run item modify entity @s weapon.offhand chaos:chest_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_helmet run item modify entity @s weapon.offhand chaos:helmet_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_ingot run item modify entity @s weapon.offhand chaos:ingot_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_leggings run item modify entity @s weapon.offhand chaos:legs_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_nugget run item modify entity @s weapon.offhand chaos:nugget_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_pickaxe run item modify entity @s weapon.offhand chaos:pick_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_shovel run item modify entity @s weapon.offhand chaos:shovel_to_gold
execute as @a[tag=play] if items entity @s weapon.offhand iron_sword run item modify entity @s weapon.offhand chaos:sword_to_gold

execute as @a[tag=play] if items entity @s armor.head iron_helmet run item modify entity @s armor.head chaos:helmet_to_gold
execute as @a[tag=play] if items entity @s armor.chest iron_chestplate run item modify entity @s armor.chest chaos:chest_to_gold
execute as @a[tag=play] if items entity @s armor.legs iron_leggings run item modify entity @s armor.legs chaos:legs_to_gold
execute as @a[tag=play] if items entity @s armor.feet iron_boots run item modify entity @s armor.feet chaos:boots_to_gold
