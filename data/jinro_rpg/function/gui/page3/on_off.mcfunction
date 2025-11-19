#>jinro_rpg:gui/page3/on_off

##いつもの
    playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    tag @s remove Return
    item replace entity @s player.cursor with air

##既に無効化してたら
    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Debug:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Debug:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run data modify storage jinro_rpg: Setting.Debug set value "ON"

    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Ske:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Ske:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run data modify storage jinro_rpg: Setting.Ske set value "ON"

    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Axe_kill:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Axe_kill:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run data modify storage jinro_rpg: Setting.Axe_kill set value "ON"

    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Spyglass:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Spyglass:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run data modify storage jinro_rpg: Setting.Spyglass set value "ON"

    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Event:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:26b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 300 if data storage jinro_rpg: {Setting:{Event:"Off"}} if entity @s[nbt=!{Inventory:[{Slot:26b}]}] run data modify storage jinro_rpg: Setting.Event set value "ON"

    execute if entity @s[tag=Return] run function jinro_rpg:gui/page0/deets_setting
    execute if entity @s[tag=Return] run return 0


##無効化する
    execute if score @s Znsi.Page matches 300 if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run data modify storage jinro_rpg: Setting.Debug set value "Off"
    execute if score @s Znsi.Page matches 300 if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run data modify storage jinro_rpg: Setting.Ske set value "Off"
    execute if score @s Znsi.Page matches 300 if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run data modify storage jinro_rpg: Setting.Axe_kill set value "Off"
    execute if score @s Znsi.Page matches 300 if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run data modify storage jinro_rpg: Setting.Spyglass set value "Off"
    execute if score @s Znsi.Page matches 300 if entity @s[nbt=!{Inventory:[{Slot:26b}]}] run data modify storage jinro_rpg: Setting.Event set value "Off"

    execute if score @s Znsi.Page matches 300 run function jinro_rpg:gui/page0/deets_setting



