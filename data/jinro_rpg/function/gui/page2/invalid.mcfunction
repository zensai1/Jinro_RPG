#>jinro_rpg:gui/page2/invalid

##いつもの
    playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    tag @s remove Return
    item replace entity @s player.cursor with air

##既に無効化してたら
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Wolf_possession:"狼憑き"}}} if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Wolf_possession:"狼憑き"}}} if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run data remove storage jinro_rpg: Setting.Position.Wolf_possession
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Twins:"双子"}}} if entity @s[nbt=!{Inventory:[{Slot:19b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Twins:"双子"}}} if entity @s[nbt=!{Inventory:[{Slot:19b}]}] run data remove storage jinro_rpg: Setting.Position.Twins
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Strong_villager:"屈強な村人"}}} if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Strong_villager:"屈強な村人"}}} if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run data remove storage jinro_rpg: Setting.Position.Strong_villager
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Bakery:"パン屋"}}} if entity @s[nbt=!{Inventory:[{Slot:21b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Bakery:"パン屋"}}} if entity @s[nbt=!{Inventory:[{Slot:21b}]}] run data remove storage jinro_rpg: Setting.Position.Bakery
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Merchant:"商人"}}} if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Merchant:"商人"}}} if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run data remove storage jinro_rpg: Setting.Position.Merchant
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Cursed_one:"呪われ者"}}} if entity @s[nbt=!{Inventory:[{Slot:23b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Cursed_one:"呪われ者"}}} if entity @s[nbt=!{Inventory:[{Slot:23b}]}] run data remove storage jinro_rpg: Setting.Position.Cursed_one
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Clown:"道化師"}}} if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 210 if data storage jinro_rpg: {Setting:{Position:{Clown:"道化師"}}} if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run data remove storage jinro_rpg: Setting.Position.Clown
    execute if score @s Znsi.Page matches 230 if data storage jinro_rpg: {Setting:{Position:{Vampire:"吸血鬼"}}} if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 230 if data storage jinro_rpg: {Setting:{Position:{Vampire:"吸血鬼"}}} if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run data remove storage jinro_rpg: Setting.Position.Vampire
    execute if score @s Znsi.Page matches 230 if data storage jinro_rpg: {Setting:{Position:{Reaper:"死神"}}} if entity @s[nbt=!{Inventory:[{Slot:19b}]}] run tag @s add Return
    execute if score @s Znsi.Page matches 230 if data storage jinro_rpg: {Setting:{Position:{Reaper:"死神"}}} if entity @s[nbt=!{Inventory:[{Slot:19b}]}] run data remove storage jinro_rpg: Setting.Position.Reaper


    execute if entity @s[tag=Return] if score @s Znsi.Page matches 210 run function jinro_rpg:gui/page2/villager_camp
    execute if entity @s[tag=Return] if score @s Znsi.Page matches 230 run function jinro_rpg:gui/page2/third_camp
    execute if entity @s[tag=Return] run return 0

##無効化
    execute if score @s Znsi.Page matches 210 if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run data modify storage jinro_rpg: Setting.Position.Wolf_possession set value "狼憑き"
    execute if score @s Znsi.Page matches 210 if entity @s[nbt=!{Inventory:[{Slot:19b}]}] run data modify storage jinro_rpg: Setting.Position.Twins set value "双子"
    execute if score @s Znsi.Page matches 210 if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run data modify storage jinro_rpg: Setting.Position.Strong_villager set value "屈強な村人"
    execute if score @s Znsi.Page matches 210 if entity @s[nbt=!{Inventory:[{Slot:21b}]}] run data modify storage jinro_rpg: Setting.Position.Bakery set value "パン屋"
    execute if score @s Znsi.Page matches 210 if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run data modify storage jinro_rpg: Setting.Position.Merchant set value "商人"
    execute if score @s Znsi.Page matches 210 if entity @s[nbt=!{Inventory:[{Slot:23b}]}] run data modify storage jinro_rpg: Setting.Position.Cursed_one set value "呪われ者"
    execute if score @s Znsi.Page matches 210 if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run data modify storage jinro_rpg: Setting.Position.Clown set value "道化師"
    execute if score @s Znsi.Page matches 230 if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run data modify storage jinro_rpg: Setting.Position.Vampire set value "吸血鬼"
    execute if score @s Znsi.Page matches 230 if entity @s[nbt=!{Inventory:[{Slot:19b}]}] run data modify storage jinro_rpg: Setting.Position.Reaper set value "死神"

    execute if score @s Znsi.Page matches 210 run function jinro_rpg:gui/page2/villager_camp
    execute if score @s Znsi.Page matches 230 run function jinro_rpg:gui/page2/third_camp