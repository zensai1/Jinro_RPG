#>jinro_rpg:gui/page2/minus

##いつもの
    item replace entity @s player.cursor with air

##減少
    execute if score @s Znsi.Page matches 210 if score #wolf_possession Znsi.Percent matches 5.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] run scoreboard players remove #wolf_possession Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #twins Znsi.Percent matches 5.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] run scoreboard players remove #twins Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #strong_villager Znsi.Percent matches 5.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] run scoreboard players remove #strong_villager Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #bakery Znsi.Percent matches 5.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:30b}]}] run scoreboard players remove #bakery Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #merchant Znsi.Percent matches 5.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:31b}]}] run scoreboard players remove #merchant Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #cursed_one Znsi.Percent matches 5.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:32b}]}] run scoreboard players remove #cursed_one Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #clown Znsi.Percent matches 5.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:33b}]}] run scoreboard players remove #clown Znsi.Percent 5

    execute if score @s Znsi.Page matches 220 if score #wolf Znsi.Num matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] run scoreboard players remove #wolf Znsi.Num 1
    execute if score @s Znsi.Page matches 220 if score #accomplice Znsi.Num matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] run scoreboard players remove #accomplice Znsi.Num 1

    execute if score @s Znsi.Page matches 230 if score #vampire Znsi.Percent matches 5.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] run scoreboard players remove #vampire Znsi.Percent 5
    execute if score @s Znsi.Page matches 230 if score #reaper Znsi.Percent matches 5.. if entity @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] run scoreboard players remove #reaper Znsi.Percent 5

##後処理 
    playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    execute if score @s Znsi.Page matches 210 run function jinro_rpg:gui/page2/villager_camp
    execute if score @s Znsi.Page matches 220 run function jinro_rpg:gui/page2/wolf_camp
    execute if score @s Znsi.Page matches 230 run function jinro_rpg:gui/page2/third_camp