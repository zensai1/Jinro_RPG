#>jinro_rpg:gui/page1/plus

#
    item replace entity @s player.cursor with air

#値段を上げる
    execute if score @s Znsi.Page matches 110 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] run scoreboard players add #bow Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] run scoreboard players add #arrow Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] run scoreboard players add #steak Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:12b}]}] run scoreboard players add #invisibility_potion Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:13b}]}] run scoreboard players add #stun_grenade Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:14b}]}] run scoreboard players add #grudge_spear Znsi.Price 1
    execute if score @s Znsi.Page matches 110 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:15b}]}] run scoreboard players add #axe Znsi.Price 1

    execute if score @s Znsi.Page matches 120 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] run scoreboard players add #fortune_mind Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] run scoreboard players add #medium_candle Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] run scoreboard players add #knights_protection Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:12b}]}] run scoreboard players add #accomplice_eye Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:13b}]}] run scoreboard players add #holy_cross Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:14b}]}] run scoreboard players add #providence_eye Znsi.Price 1
    execute if score @s Znsi.Page matches 120 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:15b}]}] run scoreboard players add #curse_of_revelation Znsi.Price 1

#ストレージに代入
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