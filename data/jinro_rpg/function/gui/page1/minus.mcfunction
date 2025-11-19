#>jinro_rpg:gui/page1/minus

#
    item replace entity @s player.cursor with air

##値段を上げる
    execute if score @s Znsi.Page matches 110 if score #bow Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] run scoreboard players remove #bow Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if score #arrow Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] run scoreboard players remove #arrow Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if score #steak Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] run scoreboard players remove #steak Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if score #invisibility_potion Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:30b}]}] run scoreboard players remove #invisibility_potion Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if score #stun_grenade Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:31b}]}] run scoreboard players remove #stun_grenade Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if score #grudge_spear Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:32b}]}] run scoreboard players remove #grudge_spear Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if score #axe Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:33b}]}] run scoreboard players remove #axe Znsi.Price 1

    execute if score @s Znsi.Page matches 120 if score #fortune_mind Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] run scoreboard players remove #fortune_mind Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if score #medium_candle Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] run scoreboard players remove #medium_candle Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if score #knights_protection Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] run scoreboard players remove #knights_protection Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if score #accomplice_eye Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:30b}]}] run scoreboard players remove #accomplice_eye Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if score #holy_cross Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:31b}]}] run scoreboard players remove #holy_cross Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if score #providence_eye Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:32b}]}] run scoreboard players remove #providence_eye Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if score #curse_of_revelation Znsi.Price matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:33b}]}] run scoreboard players remove #curse_of_revelation Znsi.Price 1

##ストレージに代入
    execute store result storage jinro_rpg: Shop.Price.Bow int 1.0 run scoreboard players get #bow Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Arrow int 1.0 run scoreboard players get #arrow Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Steak int 1.0 run scoreboard players get #steak Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Inv int 1.0 run scoreboard players get #invisibility_potion Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Stun int 1.0 run scoreboard players get #stun_grenade Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Grudge int 1.0 run scoreboard players get #grudge_spear Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Axe int 1.0 run scoreboard players get #axe Znsi.Price

    execute store result storage jinro_rpg: Shop.Price.Fortune int 1.0 run scoreboard players get #fortune_mind Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Medium int 1.0 run scoreboard players get #medium_candle Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Knights int 1.0 run scoreboard players get #knights_protection Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Accomplice int 1.0 run scoreboard players get #accomplice_eye Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Holy_Cross int 1.0 run scoreboard players get #holy_cross Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Providence int 1.0 run scoreboard players get #providence_eye Znsi.Price
    execute store result storage jinro_rpg: Shop.Price.Curse int 1.0 run scoreboard players get #curse_of_revelation Znsi.Price
    
#後処理 
    playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    execute if score @s Znsi.Page matches 110 run function jinro_rpg:gui/page1/battle
    execute if score @s Znsi.Page matches 120 run function jinro_rpg:gui/page1/auxiliary