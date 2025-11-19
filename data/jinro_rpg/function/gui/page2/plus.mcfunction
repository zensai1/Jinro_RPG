#>jinro_rpg:gui/page2/plus

##いつもの
    item replace entity @s player.cursor with air

##増加
    execute if score @s Znsi.Page matches 210 if score #wolf_possession Znsi.Percent matches ..95 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] run scoreboard players add #wolf_possession Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #twins Znsi.Percent matches ..95 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] run scoreboard players add #twins Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #strong_villager Znsi.Percent matches ..95 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] run scoreboard players add #strong_villager Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #bakery Znsi.Percent matches ..95 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:12b}]}] run scoreboard players add #bakery Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #merchant Znsi.Percent matches ..95 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:13b}]}] run scoreboard players add #merchant Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #cursed_one Znsi.Percent matches ..95 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:14b}]}] run scoreboard players add #cursed_one Znsi.Percent 5
    execute if score @s Znsi.Page matches 210 if score #clown Znsi.Percent matches ..95 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:15b}]}] run scoreboard players add #clown Znsi.Percent 5

    execute if score @s Znsi.Page matches 220 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] run scoreboard players add #wolf Znsi.Num 1
    execute if score @s Znsi.Page matches 220 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] run scoreboard players add #accomplice Znsi.Num 1

    execute if score @s Znsi.Page matches 230 if score #vampire Znsi.Percent matches ..95 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] run scoreboard players add #vampire Znsi.Percent 5
    execute if score @s Znsi.Page matches 230 if score #reaper Znsi.Percent matches ..95 if entity @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] run scoreboard players add #reaper Znsi.Percent 5


##後処理 
    playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    execute if score @s Znsi.Page matches 210 run function jinro_rpg:gui/page2/villager_camp
    execute if score @s Znsi.Page matches 220 run function jinro_rpg:gui/page2/wolf_camp
    execute if score @s Znsi.Page matches 230 run function jinro_rpg:gui/page2/third_camp