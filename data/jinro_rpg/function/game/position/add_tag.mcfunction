#>jinro_rpg:game/position/add_tag


##役職に応じたTagを付けていく
scoreboard players operation TMP Znsi.ID = @s Znsi.ID
execute as @e[type=marker,tag=Sign_stand] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select

execute if entity @s[tag=Wolf] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Wolf
execute if entity @s[tag=Accomplice] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Accomplice

execute if entity @s[tag=Vampire] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Vampire
execute if entity @s[tag=Clown] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Clown

execute if entity @s[tag=Wolf_possession] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Wolf_possession
execute if entity @s[tag=Twins] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Twins
execute if entity @s[tag=Strong_villager] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Strong_villager
execute if entity @s[tag=Bakery] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Bakery
execute if entity @s[tag=Merchant] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Merchant
execute if entity @s[tag=Cursed_one] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Cursed_one
execute if entity @s[tag=Reaper] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Reaper
execute if entity @s[tag=Villager] if entity @e[type=marker,tag=select,limit=1] as @e[type=marker,tag=select] run tag @s add Villager

tag @e[type=marker,tag=select] remove select